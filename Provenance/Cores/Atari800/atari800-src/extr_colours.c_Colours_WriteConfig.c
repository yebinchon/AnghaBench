
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int COLOURS_NTSC_WriteConfig (int *) ;
 int COLOURS_PAL_WriteConfig (int *) ;

void Colours_WriteConfig(FILE *fp)
{
 COLOURS_NTSC_WriteConfig(fp);
 COLOURS_PAL_WriteConfig(fp);
}
