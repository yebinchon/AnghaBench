
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int convert_alignment(void *dest, const char *buf, int len)
{
    int a;
    if (sscanf(buf, "%d", &a) == 1) {

        *(int *)dest = a + ((a&4) >> 1) - 5*!!(a&8);
        return 1;
    }
    return 0;
}
