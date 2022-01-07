
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARTIFACT_t ;


 int ANTIC_UpdateArtifacting () ;
 int ANTIC_artif_mode ;
 int ANTIC_artif_new ;
 int ANTIC_pal_blending ;
 int ARTIFACT_NTSC_FULL ;
 int ARTIFACT_NTSC_NEW ;
 int ARTIFACT_NTSC_OLD ;
 int ARTIFACT_PAL_BLEND ;
 int ARTIFACT_PAL_SIMPLE ;
 int ARTIFACT_mode ;
 int FALSE ;
 int TRUE ;
 int VIDEOMODE_Update () ;

__attribute__((used)) static void UpdateMode(int old_mode, int reinit)
{



 if (ARTIFACT_mode == old_mode)
  return;
 ANTIC_pal_blending = ARTIFACT_mode == ARTIFACT_PAL_SIMPLE;

 if (ARTIFACT_mode != ARTIFACT_NTSC_OLD &&
     ARTIFACT_mode != ARTIFACT_NTSC_NEW) {
  ANTIC_artif_new = ANTIC_artif_mode = 0;
 } else {
  if (ANTIC_artif_mode == 0)

   ANTIC_artif_mode = 1;
  ANTIC_artif_new = ARTIFACT_mode == ARTIFACT_NTSC_NEW;
 }
 ANTIC_UpdateArtifacting();
}
