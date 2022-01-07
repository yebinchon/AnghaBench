
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int FFMIN (int,int) ;
 int memcmp (scalar_t__ const*,scalar_t__ const*,int) ;

int ff_rle_count_pixels(const uint8_t *start, int len, int bpp, int same)
{
    const uint8_t *pos;
    int count = 1;

    for (pos = start + bpp; count < FFMIN(127, len); pos += bpp, count++) {
        if (same != !memcmp(pos - bpp, pos, bpp)) {
            if (!same) {



                if (bpp == 1 && count + 1 < FFMIN(127, len) && *pos != *(pos + 1))
                    continue;



                count--;
            }
            break;
        }
    }

    return count;
}
