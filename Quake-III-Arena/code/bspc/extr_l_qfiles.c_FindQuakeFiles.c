
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quakefile_t ;


 int ConvertPath (char*) ;
 int * FindQuakeFilesWithPakFilter (char*,char*) ;
 char* StringContains (char*,char*,int) ;
 int _MAX_PATH ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

quakefile_t *FindQuakeFiles(char *filter)
{
 char *str;
 char newfilter[_MAX_PATH];
 char pakfilter[_MAX_PATH];
 char filefilter[_MAX_PATH];

 strcpy(newfilter, filter);
 ConvertPath(newfilter);
 strcpy(pakfilter, newfilter);

 str = StringContains(pakfilter, ".pak", 0);
 if (!str) str = StringContains(pakfilter, ".pk3", 0);

 if (str)
 {
  str += strlen(".pak");
  if (*str)
  {
   *str++ = '\0';
   while(*str == '\\' || *str == '/') str++;
   strcpy(filefilter, str);
   return FindQuakeFilesWithPakFilter(pakfilter, filefilter);
  }
 }
 return FindQuakeFilesWithPakFilter(((void*)0), newfilter);
}
