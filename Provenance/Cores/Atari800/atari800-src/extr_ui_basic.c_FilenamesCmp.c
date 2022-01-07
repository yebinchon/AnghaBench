
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_stricmp (char const*,char const*) ;

__attribute__((used)) static int FilenamesCmp(const char *filename1, const char *filename2)
{
 if (filename1[0] == '[') {
  if (filename2[0] != '[')
   return -1;
  if (filename1[1] == '.') {
   if (filename2[1] != '.')
    return -1;

  }
  else if (filename2[1] == '.')
   return 1;

 }
 else if (filename2[0] == '[')
  return 1;
 return Util_stricmp(filename1, filename2);
}
