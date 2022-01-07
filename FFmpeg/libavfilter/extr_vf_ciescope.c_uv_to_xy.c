
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
uv_to_xy(double const u,
         double const v,
         double * const xc,
         double * const yc)
{



    *xc = 3*u / (2*u - 8*v + 4);
    *yc = 2*v / (2*u - 8*v + 4);
}
