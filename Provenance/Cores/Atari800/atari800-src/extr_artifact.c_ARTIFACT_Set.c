
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARTIFACT_t ;


 int ARTIFACT_mode ;
 scalar_t__ Atari800_TV_NTSC ;
 scalar_t__ Atari800_tv_mode ;
 int TRUE ;
 int UpdateMode (int ,int ) ;
 int mode_ntsc ;
 int mode_pal ;

void ARTIFACT_Set(ARTIFACT_t mode)
{
 ARTIFACT_t old_effect = ARTIFACT_mode;
 ARTIFACT_mode = mode;
 if (Atari800_tv_mode == Atari800_TV_NTSC)
  mode_ntsc = mode;
 else
  mode_pal = mode;
 UpdateMode(old_effect, TRUE);
}
