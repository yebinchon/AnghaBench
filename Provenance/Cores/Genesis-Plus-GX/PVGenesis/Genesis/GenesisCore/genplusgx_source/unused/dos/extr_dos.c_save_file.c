
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (char*,int,int,int *) ;

int save_file(char *filename, char *buf, int size)
{
  FILE *fd = ((void*)0);
  if(!(fd = fopen(filename, "wb"))) return (0);
  fwrite(buf, size, 1, fd);
  fclose(fd);
  return (1);
}
