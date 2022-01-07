
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unzFile ;


 int unzOpen64 (char const*) ;

unzFile unzOpen(const char *path)
{
    return unzOpen64(path);
}
