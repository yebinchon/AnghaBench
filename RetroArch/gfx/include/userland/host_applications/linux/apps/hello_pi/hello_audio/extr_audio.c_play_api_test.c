
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
typedef int AUDIOPLAY_STATE_T ;


 int BUFFER_SIZE_SAMPLES ;
 int CTTW_SLEEP_TIME ;
 int MIN_LATENCY_TIME ;
 unsigned int OUT_CHANNELS (int) ;
 int SIN (int) ;
 int assert (int) ;
 int * audio_dest ;
 scalar_t__ audioplay_create (int **,int,int,int,int,int) ;
 int audioplay_delete (int *) ;
 int * audioplay_get_buffer (int *) ;
 int audioplay_get_latency (int *) ;
 scalar_t__ audioplay_play_buffer (int *,int *,int) ;
 scalar_t__ audioplay_set_dest (int *,int ) ;
 int usleep (int) ;

void play_api_test(int samplerate, int bitdepth, int nchannels, int dest)
{
   AUDIOPLAY_STATE_T *st;
   int32_t ret;
   unsigned int i, j, n;
   int phase = 0;
   int inc = 256<<16;
   int dinc = 0;
   int buffer_size = (BUFFER_SIZE_SAMPLES * bitdepth * OUT_CHANNELS(nchannels))>>3;

   assert(dest == 0 || dest == 1);

   ret = audioplay_create(&st, samplerate, nchannels, bitdepth, 10, buffer_size);
   assert(ret == 0);

   ret = audioplay_set_dest(st, audio_dest[dest]);
   assert(ret == 0);


   for (n=0; n<((samplerate * 1000)/ BUFFER_SIZE_SAMPLES); n++)
   {
      uint8_t *buf;
      int16_t *p;
      uint32_t latency;

      while((buf = audioplay_get_buffer(st)) == ((void*)0))
         usleep(10*1000);

      p = (int16_t *) buf;


      for (i=0; i<BUFFER_SIZE_SAMPLES; i++)
      {
         int16_t val = SIN(phase);
         phase += inc>>16;
         inc += dinc;
         if (inc>>16 < 512)
            dinc++;
         else
            dinc--;

         for(j=0; j<OUT_CHANNELS(nchannels); j++)
         {
            if (bitdepth == 32)
               *p++ = 0;
            *p++ = val;
         }
      }



      while((latency = audioplay_get_latency(st)) > (samplerate * (MIN_LATENCY_TIME + CTTW_SLEEP_TIME) / 1000))
         usleep(CTTW_SLEEP_TIME*1000);

      ret = audioplay_play_buffer(st, buf, buffer_size);
      assert(ret == 0);
   }

   audioplay_delete(st);
}
