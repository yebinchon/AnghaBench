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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4 (int argc, char **argv)
{
   // 0=headphones, 1=hdmi
   int audio_dest = 0;
   // audio sample rate in Hz
   int samplerate = 48000;
   // numnber of audio channels
   int channels = 2;
   // number of bits per sample
   int bitdepth = 16;
   FUNC1();

   if (argc > 1)
      audio_dest = FUNC0(argv[1]);
   if (argc > 2)
      channels = FUNC0(argv[2]);
   if (argc > 3)
      samplerate = FUNC0(argv[3]);

   FUNC3("Outputting audio to %s\n", audio_dest==0 ? "analogue":"hdmi");

   FUNC2(samplerate, bitdepth, channels, audio_dest);
   return 0;
}