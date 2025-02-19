
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int avg2 (int,int) ;
 int extqh (int,int *) ;
 int extql (int,int *) ;
 int ldq (int *) ;
 int ldq_u (int *) ;
 scalar_t__ perr (int,int ) ;

__attribute__((used)) static int pix_abs16x16_y2_mvi(void *v, uint8_t *pix1, uint8_t *pix2, int line_size, int h)
{
    int result = 0;

    if ((size_t) pix2 & 0x7) {
        uint64_t t, p2_l, p2_r;
        t = ldq_u(pix2 + 8);
        p2_l = extql(ldq_u(pix2), pix2) | extqh(t, pix2);
        p2_r = extql(t, pix2) | extqh(ldq_u(pix2 + 16), pix2);

        do {
            uint64_t p1_l, p1_r, np2_l, np2_r;
            uint64_t t;

            p1_l = ldq(pix1);
            p1_r = ldq(pix1 + 8);
            pix2 += line_size;
            t = ldq_u(pix2 + 8);
            np2_l = extql(ldq_u(pix2), pix2) | extqh(t, pix2);
            np2_r = extql(t, pix2) | extqh(ldq_u(pix2 + 16), pix2);

            result += perr(p1_l, avg2(p2_l, np2_l))
                    + perr(p1_r, avg2(p2_r, np2_r));

            pix1 += line_size;
            p2_l = np2_l;
            p2_r = np2_r;

        } while (--h);
    } else {
        uint64_t p2_l, p2_r;
        p2_l = ldq(pix2);
        p2_r = ldq(pix2 + 8);
        do {
            uint64_t p1_l, p1_r, np2_l, np2_r;

            p1_l = ldq(pix1);
            p1_r = ldq(pix1 + 8);
            pix2 += line_size;
            np2_l = ldq(pix2);
            np2_r = ldq(pix2 + 8);

            result += perr(p1_l, avg2(p2_l, np2_l))
                    + perr(p1_r, avg2(p2_r, np2_r));

            pix1 += line_size;
            p2_l = np2_l;
            p2_r = np2_r;
        } while (--h);
    }
    return result;
}
