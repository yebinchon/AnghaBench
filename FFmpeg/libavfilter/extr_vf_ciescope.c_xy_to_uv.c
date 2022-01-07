
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
xy_to_uv(double xc,
         double yc,
         double * const u,
         double * const v)
{



    *u = 4*xc / (- 2*xc + 12*yc + 3);
    *v = 6*yc / (- 2*xc + 12*yc + 3);
}
