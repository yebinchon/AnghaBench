
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* hb_crop_table ;

__attribute__((used)) static inline int cubic_interpolate_pixel( int y0, int y1, int y2, int y3 )
{

    int result = ( y0 * -3 ) + ( y1 * 23 ) + ( y2 * 23 ) + ( y3 * -3 );
    result = hb_crop_table[(result / 40) + 1024];

    return result;
}
