
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int buffer_size; int drv; int fifo_condvar; int fifo_lock; int fifo; scalar_t__ paused; void* mempool; TYPE_2__* wavebufs; scalar_t__ running; } ;
typedef TYPE_1__ libnx_audren_thread_t ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_2__ AudioDriverWaveBuf ;


 scalar_t__ AudioDriverWaveBufState_Done ;
 scalar_t__ AudioDriverWaveBufState_Free ;
 unsigned int BUFFER_COUNT ;
 size_t MIN (size_t,size_t) ;
 int armDCacheFlush (void*,size_t) ;
 int audrenWaitFrame () ;
 int audrvUpdate (int *) ;
 int audrvVoiceAddWaveBuf (int *,int ,TYPE_2__*) ;
 int audrvVoiceIsPlaying (int *,int ) ;
 int audrvVoiceStart (int *,int ) ;
 int condvarWakeAll (int *) ;
 int fifo_read (int ,void*,size_t) ;
 size_t fifo_read_avail (int ) ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;
 int svcSleepThread (unsigned long) ;

__attribute__((used)) static void thread_job(void* data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available = 0;
   size_t current_size = 0;
   size_t written_tmp = 0;
   AudioDriverWaveBuf* current_wavebuf = ((void*)0);
   void* current_pool_ptr = ((void*)0);
   void* dstbuf = ((void*)0);
   unsigned i;

   if (!aud)
      return;

   while(aud->running)
   {
      if(!current_wavebuf)
      {
         for (i = 0; i < BUFFER_COUNT; i++)
         {
            if (aud->wavebufs[i].state == AudioDriverWaveBufState_Free
               || aud->wavebufs[i].state == AudioDriverWaveBufState_Done)
            {
               current_wavebuf = &aud->wavebufs[i];
               current_pool_ptr = aud->mempool + (i * aud->buffer_size);
               current_size = 0;
               break;
            }
         }
      }

      if(current_wavebuf)
      {
         mutexLock(&aud->fifo_lock);
         available = aud->paused ? 0 : fifo_read_avail(aud->fifo);
         written_tmp = MIN(available, aud->buffer_size - current_size);
         dstbuf = current_pool_ptr + current_size;
         if(written_tmp > 0)
         {
            fifo_read(aud->fifo, dstbuf, written_tmp);
         }
         mutexUnlock(&aud->fifo_lock);

         if(written_tmp > 0)
         {
            condvarWakeAll(&aud->fifo_condvar);

            current_size += written_tmp;
            armDCacheFlush(dstbuf, written_tmp);
         }

         if(current_size == aud->buffer_size)
         {
            audrvVoiceAddWaveBuf(&aud->drv, 0, current_wavebuf);

            audrvUpdate(&aud->drv);
            if (!audrvVoiceIsPlaying(&aud->drv, 0))
            {
               audrvVoiceStart(&aud->drv, 0);
            }

            current_wavebuf = ((void*)0);
         }

         svcSleepThread(1000UL);
      }
      else
      {
         audrvUpdate(&aud->drv);
         audrenWaitFrame();
      }
   }
}
