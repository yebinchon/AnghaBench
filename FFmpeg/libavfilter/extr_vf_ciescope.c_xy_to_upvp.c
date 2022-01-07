
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
xy_to_upvp(double xc,
           double yc,
           double * const up,
           double * const vp)
{



    *up = 4*xc / (- 2*xc + 12*yc + 3);
    *vp = 9*yc / (- 2*xc + 12*yc + 3);
}
