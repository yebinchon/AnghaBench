
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float h; } ;
struct TYPE_5__ {scalar_t__ display_scale; float w; scalar_t__ orientation; } ;
typedef TYPE_1__ ShowVolumeContext ;
typedef TYPE_2__ AVFilterLink ;


 scalar_t__ LINEAR ;
 float av_clipf (double,int ,int) ;
 double log10 (float) ;

__attribute__((used)) static inline int calc_max_draw(ShowVolumeContext *s, AVFilterLink *outlink, float max)
{
    float max_val;
    if (s->display_scale == LINEAR) {
        max_val = max;
    } else {
        max_val = av_clipf(0.21 * log10(max) + 1, 0, 1);
    }
    if (s->orientation) {
        return outlink->h - outlink->h * max_val;
    } else {
        return s->w * max_val;
    }
}
