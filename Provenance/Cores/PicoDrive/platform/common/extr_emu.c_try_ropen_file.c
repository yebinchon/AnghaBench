
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; } ;
typedef int FILE ;


 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static int try_ropen_file(const char *fname, int *time)
{
 struct stat st;
 FILE *f;

 f = fopen(fname, "rb");
 if (f) {
  if (time != ((void*)0)) {
   *time = 0;
   if (fstat(fileno(f), &st) == 0)
    *time = (int)st.st_mtime;
  }
  fclose(f);
  return 1;
 }
 return 0;
}
