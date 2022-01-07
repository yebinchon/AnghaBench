
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFMIN (int,int) ;

__attribute__((used)) static void dvb_encode_rle8(uint8_t **pq,
                            const uint8_t *bitmap, int linesize,
                            int w, int h)
{
    uint8_t *q;
    int x, y, len, x1, color;

    q = *pq;

    for (y = 0; y < h; y++) {
        *q++ = 0x12;

        x = 0;
        while (x < w) {
            x1 = x;
            color = bitmap[x1++];
            while (x1 < w && bitmap[x1] == color)
                x1++;
            len = x1 - x;
            if (len == 1 && color) {

                *q++ = color;
            } else {
                if (color == 0x00) {

                    len = FFMIN(len, 127);
                    *q++ = 0x00;
                    *q++ = len;
                } else if (len > 2) {

                    len = FFMIN(len, 127);
                    *q++ = 0x00;
                    *q++ = 0x80+len;
                    *q++ = color;
                }
                else if (len == 2) {
                    *q++ = color;
                    *q++ = color;
                } else {
                    *q++ = color;
                    len = 1;
                }
            }
            x += len;
        }


        *q++ = 0x00;
        *q++ = 0xf0;
        bitmap += linesize;
    }
    *pq = q;
}
