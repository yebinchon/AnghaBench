
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 char* proto80_rom_filename ;

void PBI_PROTO80_WriteConfig(FILE *fp)
{
 fprintf(fp, "PROTO80_ROM=%s\n", proto80_rom_filename);
}
