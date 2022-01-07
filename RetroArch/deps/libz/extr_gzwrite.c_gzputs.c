
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 int gzwrite (int ,char const*,unsigned int) ;
 scalar_t__ strlen (char const*) ;

int gzputs(gzFile file, const char *str)
{
    int ret;
    unsigned len;


    len = (unsigned)strlen(str);
    ret = gzwrite(file, str, len);
    return ret == 0 && len != 0 ? -1 : ret;
}
