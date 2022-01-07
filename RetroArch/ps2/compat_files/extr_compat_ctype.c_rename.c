
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileXioRename (char const*,char const*) ;

int rename(const char *source, const char *dest)
{
   return fileXioRename(source, dest);
}
