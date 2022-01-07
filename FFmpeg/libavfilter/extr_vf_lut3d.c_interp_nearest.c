
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rgbvec {int b; int g; int r; } ;
struct TYPE_3__ {size_t lutsize2; size_t lutsize; struct rgbvec* lut; } ;
typedef TYPE_1__ LUT3DContext ;


 size_t NEAR (int ) ;

__attribute__((used)) static inline struct rgbvec interp_nearest(const LUT3DContext *lut3d,
                                           const struct rgbvec *s)
{
    return lut3d->lut[NEAR(s->r) * lut3d->lutsize2 + NEAR(s->g) * lut3d->lutsize + NEAR(s->b)];
}
