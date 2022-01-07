
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARTIFACT_mode ;
 int Atari800_TV_NTSC ;
 int mode_ntsc ;
 int mode_pal ;

__attribute__((used)) static void UpdateFromTVMode(int tv_mode)
{
 if (tv_mode == Atari800_TV_NTSC)
  ARTIFACT_mode = mode_ntsc;
 else
  ARTIFACT_mode = mode_pal;
}
