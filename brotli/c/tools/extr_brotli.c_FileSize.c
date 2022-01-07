
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int SEEK_END ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fseek (int *,long,int ) ;
 int ftell (int *) ;

__attribute__((used)) static int64_t FileSize(const char* path) {
  FILE* f = fopen(path, "rb");
  int64_t retval;
  if (f == ((void*)0)) {
    return -1;
  }
  if (fseek(f, 0L, SEEK_END) != 0) {
    fclose(f);
    return -1;
  }
  retval = ftell(f);
  if (fclose(f) != 0) {
    return -1;
  }
  return retval;
}
