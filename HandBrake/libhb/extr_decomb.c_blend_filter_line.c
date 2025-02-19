
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int filter_param_t ;


 int blend_filter_pixel (int *,int ,int ,int ,int ,int ) ;
 int hb_error (char*,int,int) ;

__attribute__((used)) static void blend_filter_line(filter_param_t *filter,
                               uint8_t *dst,
                               uint8_t *cur,
                               int width,
                               int height,
                               int stride,
                               int y)
{
    int w = width;
    int x;
    int up1, up2, down1, down2;

    if (y > 1 && y < (height - 2))
    {
        up1 = -1 * stride;
        up2 = -2 * stride;
        down1 = 1 * stride;
        down2 = 2 * stride;
    }
    else if (y == 0)
    {

        up1 = up2 = 0;
        down1 = 1 * stride;
        down2 = 2 * stride;
    }
    else if (y == 1)
    {

        up1 = up2 = -1 * stride;
        down1 = 1 * stride;
        down2 = 2 * stride;
    }
    else if (y == (height - 2))
    {

        up1 = -1 * stride;
        up2 = -2 * stride;
        down1 = down2 = 1 * stride;
    }
    else if (y == (height -1))
    {

        up1 = -1 * stride;
        up2 = -2 * stride;
        down1 = down2 = 0;
    }
    else
    {
        hb_error("Invalid value y %d height %d", y, height);
        return;
    }

    for( x = 0; x < w; x++)
    {

        dst[0] = blend_filter_pixel(filter, cur[up2], cur[up1], cur[0],
                                    cur[down1], cur[down2] );
        dst++;
        cur++;
    }
}
