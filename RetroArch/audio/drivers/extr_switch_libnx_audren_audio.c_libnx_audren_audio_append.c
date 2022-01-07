
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {size_t current_pool_ptr; size_t mempool; int buffer_size; size_t current_size; int * current_wavebuf; int drv; int update_lock; int * wavebufs; } ;
typedef TYPE_1__ libnx_audren_t ;


 int armDCacheFlush (void*,size_t) ;
 int audrvUpdate (int *) ;
 int audrvVoiceAddWaveBuf (int *,int ,int *) ;
 int audrvVoiceIsPlaying (int *,int ) ;
 int audrvVoiceStart (int *,int ) ;
 int libnx_audren_audio_get_free_wavebuf_idx (TYPE_1__*) ;
 int memcpy (void*,void const*,size_t) ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;

__attribute__((used)) static size_t libnx_audren_audio_append(libnx_audren_t* aud, const void *buf, size_t size)
{
   ssize_t free_idx = -1;

   if(!aud->current_wavebuf)
   {
      free_idx = libnx_audren_audio_get_free_wavebuf_idx(aud);
      if(free_idx == -1)
         return 0;

      aud->current_wavebuf = &aud->wavebufs[free_idx];
      aud->current_pool_ptr = aud->mempool + (free_idx * aud->buffer_size);
      aud->current_size = 0;
   }

   if(size > aud->buffer_size - aud->current_size)
   {
      size = aud->buffer_size - aud->current_size;
   }

   void *dstbuf = aud->current_pool_ptr + aud->current_size;
   memcpy(dstbuf, buf, size);
   armDCacheFlush(dstbuf, size);

   aud->current_size += size;

   if(aud->current_size == aud->buffer_size)
   {
      audrvVoiceAddWaveBuf(&aud->drv, 0, aud->current_wavebuf);

      mutexLock(&aud->update_lock);
      audrvUpdate(&aud->drv);
      mutexUnlock(&aud->update_lock);

      if (!audrvVoiceIsPlaying(&aud->drv, 0))
      {
         audrvVoiceStart(&aud->drv, 0);
      }

      aud->current_wavebuf = ((void*)0);
   }

   return size;
}
