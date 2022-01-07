
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_init (int,int ) ;
 int ntsc_fps ;
 int pal_fps ;
 scalar_t__ vdp_pal ;

__attribute__((used)) static void init_audio(void)
{
   audio_init(48000, vdp_pal ? pal_fps : ntsc_fps);

}
