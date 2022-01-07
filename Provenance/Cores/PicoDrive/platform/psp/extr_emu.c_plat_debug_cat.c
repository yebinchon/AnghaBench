
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ blit_16bit_mode ;
 int strcat (char*,char*) ;

void plat_debug_cat(char *str)
{
 strcat(str, blit_16bit_mode ? "soft clut\n" : "hard clut\n");
}
