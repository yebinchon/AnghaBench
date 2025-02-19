
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void juggle(int *wrap_p, int *block_p, unsigned sub_len, unsigned sub_count)
{
    unsigned i, j;
    int *p;
    unsigned int r0, r1, r2, r3;

    for (i = 0; i < sub_len; i++) {
        p = block_p;
        r0 = wrap_p[0];
        r1 = wrap_p[1];
        for (j = 0; j < sub_count/2; j++) {
            r2 = *p;
            *p = r1 * 2 + (r0 + r2);
            p += sub_len;
            r3 = *p;
            *p = r2 * 2 - (r1 + r3);
            p += sub_len;
            r0 = r2;
            r1 = r3;
        }

        *wrap_p++ = r0;
        *wrap_p++ = r1;
        block_p++;
    }
}
