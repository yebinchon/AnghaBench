
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float floorf (float const) ;
 double sinf (int) ;

__attribute__((used)) static float frand(int x, int y)
{
    const float r = sinf(x * 12.9898 + y * 78.233) * 43758.545;

    return r - floorf(r);
}
