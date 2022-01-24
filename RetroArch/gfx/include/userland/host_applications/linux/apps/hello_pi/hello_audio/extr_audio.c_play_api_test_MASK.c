#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  AUDIOPLAY_STATE_T ;

/* Variables and functions */
 int BUFFER_SIZE_SAMPLES ; 
 int CTTW_SLEEP_TIME ; 
 int MIN_LATENCY_TIME ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * audio_dest ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(int samplerate, int bitdepth, int nchannels, int dest)
{
   AUDIOPLAY_STATE_T *st;
   int32_t ret;
   unsigned int i, j, n;
   int phase = 0;
   int inc = 256<<16;
   int dinc = 0;
   int buffer_size = (BUFFER_SIZE_SAMPLES * bitdepth * FUNC0(nchannels))>>3;

   FUNC2(dest == 0 || dest == 1);

   ret = FUNC3(&st, samplerate, nchannels, bitdepth, 10, buffer_size);
   FUNC2(ret == 0);

   ret = FUNC8(st, audio_dest[dest]);
   FUNC2(ret == 0);

   // iterate for 5 seconds worth of packets
   for (n=0; n<((samplerate * 1000)/ BUFFER_SIZE_SAMPLES); n++)
   {
      uint8_t *buf;
      int16_t *p;
      uint32_t latency;

      while((buf = FUNC5(st)) == NULL)
         FUNC9(10*1000);

      p = (int16_t *) buf;

      // fill the buffer
      for (i=0; i<BUFFER_SIZE_SAMPLES; i++)
      {
         int16_t val = FUNC1(phase);
         phase += inc>>16;
         inc += dinc;
         if (inc>>16 < 512)
            dinc++;
         else
            dinc--;

         for(j=0; j<FUNC0(nchannels); j++)
         {
            if (bitdepth == 32)
               *p++ = 0;
            *p++ = val;
         }
      }

      // try and wait for a minimum latency time (in ms) before
      // sending the next packet
      while((latency = FUNC6(st)) > (samplerate * (MIN_LATENCY_TIME + CTTW_SLEEP_TIME) / 1000))
         FUNC9(CTTW_SLEEP_TIME*1000);

      ret = FUNC7(st, buf, buffer_size);
      FUNC2(ret == 0);
   }

   FUNC4(st);
}