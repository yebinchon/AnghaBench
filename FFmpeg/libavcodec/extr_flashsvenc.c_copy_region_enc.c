
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int copy_region_enc(uint8_t *sptr, uint8_t *dptr, int dx, int dy,
                           int h, int w, int stride, uint8_t *pfptr)
{
    int i, j;
    uint8_t *nsptr;
    uint8_t *npfptr;
    int diff = 0;

    for (i = dx + h; i > dx; i--) {
        nsptr = sptr + i * stride + dy * 3;
        npfptr = pfptr + i * stride + dy * 3;
        for (j = 0; j < w * 3; j++) {
            diff |= npfptr[j] ^ nsptr[j];
            dptr[j] = nsptr[j];
        }
        dptr += w * 3;
    }
    if (diff)
        return 1;
    return 0;
}
