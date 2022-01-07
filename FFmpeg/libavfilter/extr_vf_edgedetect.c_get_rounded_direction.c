
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRECTION_45DOWN ;
 int DIRECTION_45UP ;
 int DIRECTION_HORIZONTAL ;
 int DIRECTION_VERTICAL ;

__attribute__((used)) static int get_rounded_direction(int gx, int gy)
{
    if (gx) {
        int tanpi8gx, tan3pi8gx;

        if (gx < 0)
            gx = -gx, gy = -gy;
        gy *= (1 << 16);
        tanpi8gx = 27146 * gx;
        tan3pi8gx = 158218 * gx;
        if (gy > -tan3pi8gx && gy < -tanpi8gx) return DIRECTION_45UP;
        if (gy > -tanpi8gx && gy < tanpi8gx) return DIRECTION_HORIZONTAL;
        if (gy > tanpi8gx && gy < tan3pi8gx) return DIRECTION_45DOWN;
    }
    return DIRECTION_VERTICAL;
}
