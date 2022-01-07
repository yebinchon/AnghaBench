
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t RWebAudioBufferSize () ;

__attribute__((used)) static size_t rwebaudio_buffer_size(void *data)
{
   (void)data;
   return RWebAudioBufferSize();
}
