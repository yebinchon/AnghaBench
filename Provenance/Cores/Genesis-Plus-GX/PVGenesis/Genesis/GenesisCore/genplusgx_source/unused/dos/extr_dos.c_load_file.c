
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;

int load_file(char *filename, char *buf, int size)
{
  FILE *fd = fopen(filename, "rb");
  if(!fd) return (0);
  fread(buf, size, 1, fd);
  fclose(fd);
  return (1);
}
