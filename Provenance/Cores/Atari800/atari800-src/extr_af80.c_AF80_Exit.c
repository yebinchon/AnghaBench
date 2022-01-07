
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * af80_attrib ;
 int * af80_charset ;
 int * af80_rom ;
 int * af80_screen ;
 int free (int *) ;

void AF80_Exit(void)
{
 free(af80_screen);
 free(af80_attrib);
 free(af80_charset);
 free(af80_rom);
 af80_screen = af80_attrib = af80_charset = af80_rom = ((void*)0);
}
