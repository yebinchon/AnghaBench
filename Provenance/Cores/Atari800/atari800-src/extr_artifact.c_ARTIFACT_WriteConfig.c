
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ANTIC_artif_mode ;
 int fprintf (int *,char*,...) ;
 char** mode_cfg_strings ;
 size_t mode_ntsc ;
 size_t mode_pal ;

void ARTIFACT_WriteConfig(FILE *fp)
{
 fprintf(fp, "ARTIFACT_NTSC=%s\n", mode_cfg_strings[mode_ntsc]);
 fprintf(fp, "ARTIFACT_PAL=%s\n", mode_cfg_strings[mode_pal]);
 fprintf(fp, "ARTIFACT_NTSC_MODE=%i\n", ANTIC_artif_mode);
}
