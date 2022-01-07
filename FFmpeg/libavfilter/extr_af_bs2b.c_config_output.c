
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* filter_func ;
struct TYPE_7__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int sample_rate; int format; TYPE_3__* src; } ;
struct TYPE_5__ {int bs2bp; void* filter; } ;
typedef TYPE_1__ Bs2bContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;





 int BS2B_MAXSRATE ;
 int BS2B_MINSRATE ;
 int ENOSYS ;
 int bs2b_cross_feed_d ;
 int bs2b_cross_feed_f ;
 int bs2b_cross_feed_s16 ;
 int bs2b_cross_feed_s32 ;
 int bs2b_cross_feed_u8 ;
 int bs2b_set_srate (int ,int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    Bs2bContext *bs2b = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];

    int srate = inlink->sample_rate;

    switch (inlink->format) {
    case 128:
        bs2b->filter = (filter_func) bs2b_cross_feed_u8;
        break;
    case 130:
        bs2b->filter = (filter_func) bs2b_cross_feed_s16;
        break;
    case 129:
        bs2b->filter = (filter_func) bs2b_cross_feed_s32;
        break;
    case 131:
        bs2b->filter = (filter_func) bs2b_cross_feed_f;
        break;
    case 132:
        bs2b->filter = (filter_func) bs2b_cross_feed_d;
        break;
    default:
        return AVERROR_BUG;
    }

    if ((srate < BS2B_MINSRATE) || (srate > BS2B_MAXSRATE))
        return AVERROR(ENOSYS);

    bs2b_set_srate(bs2b->bs2bp, srate);

    return 0;
}
