
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cubic_interpolate_pixel (int,int,int,int) ;

__attribute__((used)) static void cubic_interpolate_line(
        uint8_t *dst,
        uint8_t *cur,
        int width,
        int height,
        int stride,
        int y)
{
    int w = width;
    int x;

    for( x = 0; x < w; x++)
    {
        int a, b, c, d;
        a = b = c = d = 0;

        if( y >= 3 )
        {

            a = cur[-3*stride];
            b = cur[-stride];
        }
        else if( y == 2 || y == 1 )
        {

            a = cur[-stride];
            b = cur[-stride];
        }
        else if( y == 0 )
        {

            a = cur[+stride];
            b = cur[+stride];
        }

        if( y <= ( height - 4 ) )
        {

            c = cur[+stride];
            d = cur[3*stride];
        }
        else if( y == ( height - 3 ) || y == ( height - 2 ) )
        {

            c = cur[+stride];
            d = cur[+stride];
        }
        else if( y == height - 1)
        {

            c = cur[-stride];
            d = cur[-stride];
        }

        dst[0] = cubic_interpolate_pixel( a, b, c, d );

        dst++;
        cur++;
    }
}
