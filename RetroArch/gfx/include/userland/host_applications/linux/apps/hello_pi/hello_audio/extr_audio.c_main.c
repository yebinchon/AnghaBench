
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int bcm_host_init () ;
 int play_api_test (int,int,int,int) ;
 int printf (char*,char*) ;

int main (int argc, char **argv)
{

   int audio_dest = 0;

   int samplerate = 48000;

   int channels = 2;

   int bitdepth = 16;
   bcm_host_init();

   if (argc > 1)
      audio_dest = atoi(argv[1]);
   if (argc > 2)
      channels = atoi(argv[2]);
   if (argc > 3)
      samplerate = atoi(argv[3]);

   printf("Outputting audio to %s\n", audio_dest==0 ? "analogue":"hdmi");

   play_api_test(samplerate, bitdepth, channels, audio_dest);
   return 0;
}
