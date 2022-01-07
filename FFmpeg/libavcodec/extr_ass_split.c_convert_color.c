
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int convert_color(void *dest, const char *buf, int len)
{
    return sscanf(buf, "&H%8x", (int *)dest) == 1 ||
           sscanf(buf, "%d", (int *)dest) == 1;
}
