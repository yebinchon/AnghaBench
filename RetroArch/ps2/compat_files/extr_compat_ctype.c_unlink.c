
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileXioRemove (char const*) ;

int unlink(const char *path)
{
 return fileXioRemove(path);
}
