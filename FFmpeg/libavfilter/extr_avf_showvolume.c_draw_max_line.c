
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int b; int h; int persistant_max_rgba; TYPE_1__* out; scalar_t__ orientation; } ;
struct TYPE_4__ {int* linesize; int ** data; } ;
typedef TYPE_2__ ShowVolumeContext ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static inline void draw_max_line(ShowVolumeContext *s, int max_draw, int channel)
{
    int k;
    if (s->orientation) {
        uint8_t *dst = s->out->data[0] + max_draw * s->out->linesize[0] + channel * (s->b + s->h) * 4;
        for (k = 0; k < s->h; k++) {
            memcpy(dst + k * 4, s->persistant_max_rgba, sizeof(s->persistant_max_rgba));
        }
    } else {
        for (k = 0; k < s->h; k++) {
            uint8_t *dst = s->out->data[0] + (channel * s->h + channel * s->b + k) * s->out->linesize[0];
            memcpy(dst + max_draw * 4, s->persistant_max_rgba, sizeof(s->persistant_max_rgba));
        }
    }
}
