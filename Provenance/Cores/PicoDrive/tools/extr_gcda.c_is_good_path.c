
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int is_good_path(char *path)
{
 int len = strlen(path);

 path[len-2] = 'n';
 path[len-1] = 'o';

 FILE *f = fopen(path, "rb");

 path[len-2] = 'd';
 path[len-1] = 'a';

 if (f) {
  fclose(f);
  return 1;
 }
 printf("not good path: %s\n", path);
 return 0;
}
