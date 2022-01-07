
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t AX_AUDIO_COUNT ;

__attribute__((used)) static size_t ax_audio_buffer_size(void* data)
{
   (void)data;
   return AX_AUDIO_COUNT;
}
