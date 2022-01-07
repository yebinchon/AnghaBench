
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char** dirs ;
 int * fopen (char*,char*) ;
 int sprintf (char*,char*,char*,char*) ;

FILE *openfile(char *name) {
 int i;
 FILE *fp;

 if (*name != '/')
  for (i = 0; dirs[i]; i++) {
   char buf[200];
   sprintf(buf, "%s/%s", dirs[i], name);
   if (fp = fopen(buf, "r"))
    return fp;
  }
 return fopen(name, "r");
}
