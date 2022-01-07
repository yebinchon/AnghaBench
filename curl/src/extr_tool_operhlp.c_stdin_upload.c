
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int strcmp (char const*,char*) ;

bool stdin_upload(const char *uploadfile)
{
  return (!strcmp(uploadfile, "-") ||
          !strcmp(uploadfile, ".")) ? TRUE : FALSE;
}
