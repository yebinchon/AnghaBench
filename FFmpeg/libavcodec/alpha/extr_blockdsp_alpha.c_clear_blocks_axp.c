
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int16_t ;



__attribute__((used)) static void clear_blocks_axp(int16_t *blocks) {
    uint64_t *p = (uint64_t *) blocks;
    int n = sizeof(int16_t) * 6 * 64;

    do {
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
        p[3] = 0;
        p[4] = 0;
        p[5] = 0;
        p[6] = 0;
        p[7] = 0;
        p += 8;
        n -= 8 * 8;
    } while (n);
}
