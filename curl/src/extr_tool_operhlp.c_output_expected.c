
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ checkprefix (char*,char const*) ;

bool output_expected(const char *url, const char *uploadfile)
{
  if(!uploadfile)
    return TRUE;
  if(checkprefix("http://", url) || checkprefix("https://", url))
    return TRUE;

  return FALSE;
}
