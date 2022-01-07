
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
typedef int FILE ;


 int chdir (char*) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 int fwrite (int *,int,int,int *) ;
 int myexit (int) ;
 int printf (char*,...) ;
 int stdout ;

s32 convert_bin_to_iso(FILE *bin_file, char *output_dir, char *iso_file_name,
 u32 sector_count)
{
  FILE *iso_file;
  u8 sector_buffer[2352];
  u32 i;

  chdir(output_dir);
  iso_file = fopen(iso_file_name, "wb");
  if (iso_file == ((void*)0))
  {
    printf("failed to open: %s\n", iso_file_name);
    myexit(1);
  }
  printf("writing iso %s, %x sectors\n", iso_file_name, sector_count);

  for(i = 0; i < sector_count; i++)
  {
    printf("\b\b\b%3i", i*100 / sector_count);
    fflush(stdout);
    fread(sector_buffer, 2352, 1, bin_file);
    fwrite(sector_buffer + 16, 2048, 1, iso_file);
  }
  printf("\b\b\b100\n");

  fclose(iso_file);
  chdir("..");
  return 0;
}
