
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uch ;



__attribute__((used)) static int wpng_isvalid_latin1(uch *p, int len)
{
    int i, result = -1;

    for (i = 0; i < len; ++i) {
        if (p[i] == 10 || (p[i] > 31 && p[i] < 127) || p[i] > 160)
            continue;
        if (result < 0 || (p[result] != 27 && p[i] == 27))
            result = i;
    }

    return result;
}
