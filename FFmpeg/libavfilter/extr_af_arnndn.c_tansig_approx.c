
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ floor (float) ;
 scalar_t__ isnan (float) ;
 float* tansig_table ;

__attribute__((used)) static inline float tansig_approx(float x)
{
    float y, dy;
    float sign=1;
    int i;


    if (!(x<8))
        return 1;
    if (!(x>-8))
        return -1;


    if (isnan(x))
       return 0;

    if (x < 0) {
       x=-x;
       sign=-1;
    }
    i = (int)floor(.5f+25*x);
    x -= .04f*i;
    y = tansig_table[i];
    dy = 1-y*y;
    y = y + x*dy*(1 - y*x);
    return sign*y;
}
