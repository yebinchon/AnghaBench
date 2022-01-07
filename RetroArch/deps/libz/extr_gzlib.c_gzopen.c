
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 int gz_open (char const*,int,char const*) ;

gzFile gzopen(const char *path, const char *mode)
{
   return gz_open(path, -1, mode);
}
