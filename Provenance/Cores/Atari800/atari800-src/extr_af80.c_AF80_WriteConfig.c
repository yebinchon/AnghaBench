
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* af80_charset_filename ;
 char* af80_rom_filename ;
 int fprintf (int *,char*,char*) ;

void AF80_WriteConfig(FILE *fp)
{
 fprintf(fp, "AF80_ROM=%s\n", af80_rom_filename);
 fprintf(fp, "AF80_CHARSET=%s\n", af80_charset_filename);
}
