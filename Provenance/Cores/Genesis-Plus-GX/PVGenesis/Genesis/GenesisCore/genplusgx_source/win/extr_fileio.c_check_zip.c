
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 scalar_t__ memcmp (int *,char*,int) ;

__attribute__((used)) static int check_zip(char *filename)
{
  uint8 buf[2];
  FILE *fd = fopen(filename, "rb");
  if(!fd) return (0);
  fread(buf, 2, 1, fd);
  fclose(fd);
  if(memcmp(buf, "PK", 2) == 0) return (1);
  return (0);
}
