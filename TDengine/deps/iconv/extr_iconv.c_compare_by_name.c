
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int compare_by_name (const void * arg1, const void * arg2)
{
  const char * name1 = *(const char **)arg1;
  const char * name2 = *(const char **)arg2;

  int sign = strcmp(name1,name2);
  if (sign != 0) {
    sign = ((name1[0]=='C' && name1[1]=='S') - (name2[0]=='C' && name2[1]=='S'))
           * 4 + (sign >= 0 ? 1 : -1);
  }
  return sign;
}
