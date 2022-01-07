
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int read_pos; int zeroBuffer; int buffer; int cond_lock; int cond; int fifo_lock; scalar_t__ write_pos; scalar_t__ running; int rate; } ;
typedef TYPE_1__ psp_audio_t ;


 int AUDIO_BUFFER_SIZE_MASK ;
 int AUDIO_OUT_COUNT ;
 int PSP_AUDIO_VOLUME_MAX ;
 int SCE_AUDIO_OUT_MODE_STEREO ;
 int SCE_AUDIO_OUT_PORT_TYPE_MAIN ;
 int sceAudioOutClose (int) ;
 int sceAudioOutOpen (int,int ,int ,int,int ,int ) ;
 int sceAudioOutOpenPort (int ,int,int ,int ) ;
 int sceAudioOutOutput (int,int) ;
 int sceAudioOutReleasePort (int) ;
 int sceAudioSRCChRelease () ;
 int sceAudioSRCChReserve (int,int ,int) ;
 int sceAudioSRCOutputBlocking (int ,int) ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void audioMainLoop(void *data)
{
   psp_audio_t* psp = (psp_audio_t*)data;
   sceAudioSRCChReserve(AUDIO_OUT_COUNT, psp->rate, 2);


   while (psp->running)
   {
      bool cond = 0;
      uint16_t read_pos = psp->read_pos;
      uint16_t read_pos_2 = psp->read_pos;

      slock_lock(psp->fifo_lock);

      cond = ((uint16_t)(psp->write_pos - read_pos) & AUDIO_BUFFER_SIZE_MASK)
            < (AUDIO_OUT_COUNT * 2);

      if (!cond)
      {
         read_pos += AUDIO_OUT_COUNT;
         read_pos &= AUDIO_BUFFER_SIZE_MASK;
         psp->read_pos = read_pos;
      }

      slock_unlock(psp->fifo_lock);
      slock_lock(psp->cond_lock);
      scond_signal(psp->cond);
      slock_unlock(psp->cond_lock);






      sceAudioSRCOutputBlocking(PSP_AUDIO_VOLUME_MAX, cond ? (psp->zeroBuffer)
            : (psp->buffer + read_pos));

   }






   sceAudioSRCChRelease();


   return;
}
