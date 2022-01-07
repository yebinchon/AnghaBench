
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 scalar_t__ floorf (float) ;
 float get_pixel_extend (int ,int,int,int) ;

__attribute__((used)) static float bilinear_interpolate(image im, float x, float y, int c)
{
    int ix = (int) floorf(x);
    int iy = (int) floorf(y);

    float dx = x - ix;
    float dy = y - iy;

    float val = (1-dy) * (1-dx) * get_pixel_extend(im, ix, iy, c) +
        dy * (1-dx) * get_pixel_extend(im, ix, iy+1, c) +
        (1-dy) * dx * get_pixel_extend(im, ix+1, iy, c) +
        dy * dx * get_pixel_extend(im, ix+1, iy+1, c);
    return val;
}
