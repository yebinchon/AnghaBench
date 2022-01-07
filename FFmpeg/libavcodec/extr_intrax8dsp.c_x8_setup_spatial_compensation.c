
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int area1 ;
 int area2 ;
 int area3 ;
 int area4 ;
 int area5 ;
 int area6 ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static void x8_setup_spatial_compensation(uint8_t *src, uint8_t *dst,
                                          ptrdiff_t stride, int *range,
                                          int *psum, int edges)
{
    uint8_t *ptr;
    int sum;
    int i;
    int min_pix, max_pix;
    uint8_t c;

    if ((edges & 3) == 3) {
        *psum = 0x80 * (8 + 1 + 8 + 2);
        *range = 0;
        memset(dst, 0x80, 16 + 1 + 16 + 8);


        return;
    }

    min_pix = 256;
    max_pix = -1;

    sum = 0;

    if (!(edges & 1)) {
        ptr = src - 1;
        for (i = 7; i >= 0; i--) {
            c = *(ptr - 1);
            dst[area1 + i] = c;
            c = *ptr;

            sum += c;
            min_pix = FFMIN(min_pix, c);
            max_pix = FFMAX(max_pix, c);
            dst[area2 + i] = c;

            ptr += stride;
        }
    }

    if (!(edges & 2)) {
        ptr = src - stride;
        for (i = 0; i < 8; i++) {
            c = *(ptr + i);
            sum += c;
            min_pix = FFMIN(min_pix, c);
            max_pix = FFMAX(max_pix, c);
        }
        if (edges & 4) {
            memset(dst + area5, c, 8);
            memcpy(dst + area4, ptr, 8);
        } else {
            memcpy(dst + area4, ptr, 16);
        }

        memcpy(dst + area6, ptr - stride, 8);
    }

    if (edges & 3) {
        int avg = (sum + 4) >> 3;

        if (edges & 1)
            memset(dst + area1, avg, 8 + 8 + 1);
        else
            memset(dst + area3, avg, 1 + 16 + 8);

        sum += avg * 9;
    } else {

        uint8_t c = *(src - 1 - stride);
        dst[area3] = c;
        sum += c;

    }
    *range = max_pix - min_pix;
    sum += *(dst + area5) + *(dst + area5 + 1);
    *psum = sum;
}
