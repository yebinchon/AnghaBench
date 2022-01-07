
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int FILE ;


 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void proc_set(const char *path, const char *val)
{
 FILE *f;
 char tmp[16];

 f = fopen(path, "w");
 if (f == ((void*)0)) {
  printf("failed to open: %s\n", path);
  return;
 }

 fprintf(f, "0\n");
 fclose(f);

 printf("\"%s\" is set to: ", path);
 f = fopen(path, "r");
 if (f == ((void*)0)) {
  printf("(open failed)\n");
  return;
 }

 fgets(tmp, sizeof(tmp), f);
 printf("%s", tmp);
 fclose(f);
}
