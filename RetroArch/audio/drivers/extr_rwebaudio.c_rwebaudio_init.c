
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* RWebAudioInit (unsigned int) ;
 unsigned int RWebAudioSampleRate () ;

__attribute__((used)) static void *rwebaudio_init(const char *device, unsigned rate, unsigned latency,
      unsigned block_frames,
      unsigned *new_rate)
{
   void *data = RWebAudioInit(latency);

   (void)device;
   (void)rate;

   if (data)
      *new_rate = RWebAudioSampleRate();
   return data;
}
