
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;



__attribute__((used)) static void interp_point(int8_t *points, int x0, int y0, int x1, int y1,
                         int pos, int npoints)
{
    if (npoints) {
        points[0] = (x0 * pos + x1 * (npoints - pos) + (npoints >> 1)) / npoints;
        points[1] = (y0 * pos + y1 * (npoints - pos) + (npoints >> 1)) / npoints;
    } else {
        points[0] = x0;
        points[1] = y0;
    }
}
