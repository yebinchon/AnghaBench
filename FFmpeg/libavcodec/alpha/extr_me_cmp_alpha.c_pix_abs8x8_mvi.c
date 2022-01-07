
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int ldq (int *) ;
 scalar_t__ perr (int ,int ) ;
 int uldq (int *) ;

__attribute__((used)) static int pix_abs8x8_mvi(void *v, uint8_t *pix1, uint8_t *pix2, int line_size, int h)
{
    int result = 0;

    if ((size_t) pix2 & 0x7) {

        do {
            uint64_t p1, p2;

            p1 = ldq(pix1);
            p2 = uldq(pix2);
            result += perr(p1, p2);

            pix1 += line_size;
            pix2 += line_size;
        } while (--h);
    } else {
        do {
            uint64_t p1, p2;

            p1 = ldq(pix1);
            p2 = ldq(pix2);
            result += perr(p1, p2);

            pix1 += line_size;
            pix2 += line_size;
        } while (--h);
    }

    return result;
}
