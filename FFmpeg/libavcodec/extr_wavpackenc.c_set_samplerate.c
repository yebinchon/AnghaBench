
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_1__* avctx; } ;
typedef TYPE_2__ WavPackEncodeContext ;
struct TYPE_4__ {scalar_t__ sample_rate; } ;


 int SRATE_LSB ;
 scalar_t__* wv_rates ;

__attribute__((used)) static void set_samplerate(WavPackEncodeContext *s)
{
    int i;

    for (i = 0; i < 15; i++) {
        if (wv_rates[i] == s->avctx->sample_rate)
            break;
    }

    s->flags = i << SRATE_LSB;
}
