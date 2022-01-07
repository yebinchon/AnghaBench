
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hb_str_vlen(char **strv)
{
    int i;
    if (strv == ((void*)0))
        return 0;
    for (i = 0; strv[i]; i++);
    return i;
}
