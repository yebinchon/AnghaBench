
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nonblock; int cond_lock; int cond; int * buffer; scalar_t__ shutdown; } ;
typedef TYPE_1__ jack_t ;
typedef float jack_default_audio_sample_t ;


 int AUDIO_CHUNK_SIZE_NONBLOCKING ;
 int AUDIO_MAX_RATIO ;
 size_t FRAMES (size_t) ;
 int jack_ringbuffer_write (int ,char const*,size_t) ;
 size_t jack_ringbuffer_write_space (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t write_buffer(jack_t *jd, const float *buf, size_t size)
{
   int i;
   size_t j, written = 0;
   jack_default_audio_sample_t out_deinterleaved_buffer[2][AUDIO_CHUNK_SIZE_NONBLOCKING * AUDIO_MAX_RATIO];
   size_t frames = FRAMES(size);


   if (frames > AUDIO_CHUNK_SIZE_NONBLOCKING * AUDIO_MAX_RATIO)
      frames = AUDIO_CHUNK_SIZE_NONBLOCKING * AUDIO_MAX_RATIO;

   for (i = 0; i < 2; i++)
      for (j = 0; j < frames; j++)
         out_deinterleaved_buffer[i][j] = buf[j * 2 + i];

   while (written < frames)
   {
      size_t avail[2], min_avail, write_frames;
      if (jd->shutdown)
         return 0;

      avail[0] = jack_ringbuffer_write_space(jd->buffer[0]);
      avail[1] = jack_ringbuffer_write_space(jd->buffer[1]);

      min_avail = avail[0] < avail[1] ? avail[0] : avail[1];
      min_avail /= sizeof(float);

      write_frames = frames - written > min_avail ? min_avail : frames - written;

      if (write_frames > 0)
      {
         for (i = 0; i < 2; i++)
         {
            jack_ringbuffer_write(jd->buffer[i], (const char*)&out_deinterleaved_buffer[i][written],
                  write_frames * sizeof(jack_default_audio_sample_t));
         }
         written += write_frames;
      }
      if (jd->nonblock)
         break;
   }

   return written * sizeof(float) * 2;
}
