
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int blocksize; TYPE_3__* subframes; } ;
struct TYPE_9__ {int channels; TYPE_1__ frame; } ;
struct TYPE_7__ {int coding_mode; } ;
struct TYPE_8__ {int* samples; int wasted; int obits; TYPE_2__ rc; } ;
typedef TYPE_3__ FlacSubframe ;
typedef TYPE_4__ FlacEncodeContext ;


 int CODING_MODE_RICE ;
 int ff_ctz (int) ;

__attribute__((used)) static void remove_wasted_bits(FlacEncodeContext *s)
{
    int ch, i;

    for (ch = 0; ch < s->channels; ch++) {
        FlacSubframe *sub = &s->frame.subframes[ch];
        int32_t v = 0;

        for (i = 0; i < s->frame.blocksize; i++) {
            v |= sub->samples[i];
            if (v & 1)
                break;
        }

        if (v && !(v & 1)) {
            v = ff_ctz(v);

            for (i = 0; i < s->frame.blocksize; i++)
                sub->samples[i] >>= v;

            sub->wasted = v;
            sub->obits -= v;



            if (sub->obits <= 17)
                sub->rc.coding_mode = CODING_MODE_RICE;
        }
    }
}
