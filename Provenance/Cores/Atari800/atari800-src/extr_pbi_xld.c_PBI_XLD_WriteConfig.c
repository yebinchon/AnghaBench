
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 char* xld_d_rom_filename ;
 char* xld_v_rom_filename ;

void PBI_XLD_WriteConfig(FILE *fp)
{
 fprintf(fp, "XLD_D_ROM=%s\n", xld_d_rom_filename);
 fprintf(fp, "XLD_V_ROM=%s\n", xld_v_rom_filename);
}
