
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,int*) ;

__attribute__((used)) static int read_int_from_file(const char *fname)
{
 int ret = -1;
 FILE *f;

 f = fopen(fname, "r");
 if (f) {
  fscanf(f, "%d", &ret);
  fclose(f);
 }
 return ret;
}
