
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 SNDWavGetAudioSpace(void)
{





   static int i = 0;
   i++;
   if (i == 55) {
      i = 0;
      return 85;
   } else {
      return 0;
   }
}
