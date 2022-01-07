
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int lstrlen (char*) ;

char *ViUrlToFileName(char *url)
{
 UINT i, len;
 char *ret = url;
 bool b = 1;
 len = lstrlen(url);

 for (i = 0;i < len;i++)
 {
  char c = url[i];

  if (c == '?' || c == '#')
  {
   b = 0;
  }

  if (b)
  {
   if (c == '/' || c == '\\')
   {
    if (lstrlen(url + i + 1) > 1)
    {
     ret = url + i + 1;
    }
   }
  }
 }

 return ret;
}
