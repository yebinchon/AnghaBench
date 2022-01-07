
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_malloc (int) ;
 int snprintf (char*,int,char*,double) ;

char *av_d2str(double d)
{
    char *str = av_malloc(16);
    if (str)
        snprintf(str, 16, "%f", d);
    return str;
}
