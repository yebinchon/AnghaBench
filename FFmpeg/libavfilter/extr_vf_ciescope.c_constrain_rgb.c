
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
constrain_rgb(double * const r,
              double * const g,
              double * const b)
{






    double w;


    w = (0 < *r) ? 0 : *r;
    w = (w < *g) ? w : *g;
    w = (w < *b) ? w : *b;
    w = - w;


    if (w > 0) {
        *r += w; *g += w; *b += w;

        return 1;
    }

    return 0;
}
