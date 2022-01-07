
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int s16 ;


 int ScspConvert32uto16s (int *,int *,int *,int ) ;
 int fwrite (void*,int,int ,int ) ;
 int wavefp ;

__attribute__((used)) static void SNDWavUpdateAudio(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{
   s16 stereodata16[44100 / 50];
   ScspConvert32uto16s((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)stereodata16, num_samples);
   fwrite((void *)stereodata16, sizeof(s16) * 2, num_samples, wavefp);
}
