
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* ac3_max_msb_abs_int16 ) (int ,int ) ;int (* ac3_lshift_int16 ) (int ,int ,int) ;} ;
struct TYPE_5__ {int windowed_samples; TYPE_1__ ac3dsp; } ;
typedef TYPE_2__ AC3EncodeContext ;


 int AC3_WINDOW_SIZE ;
 int av_log2 (int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static int normalize_samples(AC3EncodeContext *s)
{
    int v = s->ac3dsp.ac3_max_msb_abs_int16(s->windowed_samples, AC3_WINDOW_SIZE);
    v = 14 - av_log2(v);
    if (v > 0)
        s->ac3dsp.ac3_lshift_int16(s->windowed_samples, AC3_WINDOW_SIZE, v);

    return v + 6;
}
