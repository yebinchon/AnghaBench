
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT32 ;
typedef int INT16 ;



INT16 utl_str2int(const char *p_s)
{
    INT32 val = 0;

    for (; *p_s == ' ' && *p_s != 0; p_s++);

    if (*p_s == 0) {
        return -1;
    }

    for (;;) {
        if ((*p_s < '0') || (*p_s > '9')) {
            return -1;
        }

        val += (INT32) (*p_s++ - '0');

        if (val > 32767) {
            return -1;
        }

        if (*p_s == 0) {
            return (INT16) val;
        } else {
            val *= 10;
        }
    }
}
