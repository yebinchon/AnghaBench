
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ps2_audio_t ;


 int audioConfigure (void*,unsigned int) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void *ps2_audio_init(const char *device,
      unsigned rate, unsigned latency,
      unsigned block_frames,
      unsigned *new_rate)
{
   ps2_audio_t *ps2 = (ps2_audio_t*)calloc(1, sizeof(ps2_audio_t));

   if (!ps2)
      return ((void*)0);

   audioConfigure(ps2, rate);

   return ps2;
}
