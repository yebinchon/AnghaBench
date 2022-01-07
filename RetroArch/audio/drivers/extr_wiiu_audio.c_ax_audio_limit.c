
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX_AUDIO_COUNT ;

__attribute__((used)) static int ax_audio_limit(int in)
{
 if(in < 0)
  in += AX_AUDIO_COUNT;
 else if(in >= AX_AUDIO_COUNT)
  in -= AX_AUDIO_COUNT;
 return in;
}
