
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileXioSymlink (char const*,char const*) ;

int link(const char *oldpath, const char *newpath)
{
 return fileXioSymlink(oldpath, newpath);
}
