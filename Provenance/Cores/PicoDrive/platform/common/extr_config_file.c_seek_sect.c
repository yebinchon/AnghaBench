
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int feof (int *) ;
 char* fgets (char*,int,int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int seek_sect(FILE *f, const char *section)
{
 char line[128], *tmp;
 int len;

 len = strlen(section);

 while (!feof(f))
 {
  tmp = fgets(line, sizeof(line), f);
  if (tmp == ((void*)0)) break;

  if (line[0] != '[') continue;
  if (strncmp(line + 1, section, len) == 0 && line[len+1] == ']')
   return 1;
 }

 return 0;
}
