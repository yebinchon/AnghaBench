
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int patch_t ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int PU_STATIC ;
 scalar_t__ W_CacheLumpName (char*,int ) ;
 int english_shiftxform ;
 scalar_t__ french ;
 int french_shiftxform ;
 int ** hu_font ;
 int shiftxform ;
 int sprintf (char*,char*,int ) ;

void HU_Init(void)
{

    int i;
    int j;
    char buffer[9];

    if (french)
 shiftxform = french_shiftxform;
    else
 shiftxform = english_shiftxform;


    j = HU_FONTSTART;
    for (i=0;i<HU_FONTSIZE;i++)
    {
 sprintf(buffer, "STCFN%.3d", j++);
 hu_font[i] = (patch_t *) W_CacheLumpName(buffer, PU_STATIC);
    }

}
