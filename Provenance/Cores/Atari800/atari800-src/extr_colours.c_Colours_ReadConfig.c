
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COLOURS_NTSC_ReadConfig (char*,char*) ;
 scalar_t__ COLOURS_PAL_ReadConfig (char*,char*) ;
 int FALSE ;
 int TRUE ;

int Colours_ReadConfig(char *option, char *ptr)
{
 if (COLOURS_NTSC_ReadConfig(option, ptr)) {
 }
 else if (COLOURS_PAL_ReadConfig(option, ptr)) {
 }
 else return FALSE;
 return TRUE;
}
