
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
upvp_to_xy(double const up,
           double const vp,
           double * const xc,
           double * const yc)
{



    *xc = 9*up / (6*up - 16*vp + 12);
    *yc = 4*vp / (6*up - 16*vp + 12);
}
