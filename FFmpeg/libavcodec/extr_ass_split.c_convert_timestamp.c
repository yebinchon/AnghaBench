
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static int convert_timestamp(void *dest, const char *buf, int len)
{
    int c, h, m, s, cs;
    if ((c = sscanf(buf, "%d:%02d:%02d.%02d", &h, &m, &s, &cs)) == 4)
        *(int *)dest = 360000*h + 6000*m + 100*s + cs;
    return c == 4;
}
