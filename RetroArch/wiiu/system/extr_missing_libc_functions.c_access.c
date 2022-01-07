
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;

int access(const char* path, int mode) {
 return 0;

 FILE* fd = fopen(path, "rb");
 if (fd < 0) {
  fclose(fd);

  return -1;
 } else {
  fclose(fd);
  return 0;
 }
}
