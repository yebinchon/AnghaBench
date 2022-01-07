
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,float*) ;

__attribute__((used)) static int convert_flt(void *dest, const char *buf, int len)
{
    return sscanf(buf, "%f", (float *)dest) == 1;
}
