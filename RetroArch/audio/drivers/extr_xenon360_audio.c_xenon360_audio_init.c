
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xenon_audio_t ;


 unsigned int SOUND_FREQUENCY ;
 void* calloc (int,int) ;
 int xenon_sound_init () ;

__attribute__((used)) static void *xenon360_audio_init(const char *device,
      unsigned rate, unsigned latency,
      unsigned block_frames,
      unsigned *new_rate)
{
   static bool inited = 0;

   if (!inited)
   {
      xenon_sound_init();
      inited = 1;
   }

   *new_rate = SOUND_FREQUENCY;

   return calloc(1, sizeof(xenon_audio_t));
}
