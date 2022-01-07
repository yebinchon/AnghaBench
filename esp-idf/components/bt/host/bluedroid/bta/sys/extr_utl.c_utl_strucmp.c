
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int utl_strucmp(const char *p_s, const char *p_t)
{
    char c;

    while (*p_s && *p_t) {
        c = *p_t++;
        if (c >= 'a' && c <= 'z') {
            c -= 0x20;
        }
        if (*p_s++ != c) {
            return -1;
        }
    }

    if (*p_t == 0 && *p_s != 0) {
        return 1;
    }

    else {
        return 0;
    }
}
