
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_12__ {int nterms; void* best_bits; TYPE_3__* dps; int log_limit; } ;
typedef TYPE_1__ WavPackExtraInfo ;
struct TYPE_13__ {int block_samples; TYPE_3__*** sampleptrs; TYPE_3__* decorr_passes; } ;
typedef TYPE_2__ WavPackEncodeContext ;
struct TYPE_14__ {int delta; scalar_t__ value; } ;


 int CLEAR (TYPE_3__*) ;
 int decorr_mono_buffer (TYPE_3__*,TYPE_3__*,int,TYPE_3__*,int) ;
 void* log2mono (TYPE_3__*,int,int ) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static void delta_mono(WavPackEncodeContext *s, WavPackExtraInfo *info)
{
    int lower = 0, delta, d;
    uint32_t bits;

    if (!s->decorr_passes[0].value)
        return;
    delta = s->decorr_passes[0].delta;

    for (d = delta - 1; d >= 0; d--) {
        int i;

        for (i = 0; i < info->nterms && s->decorr_passes[i].value; i++) {
            info->dps[i].value = s->decorr_passes[i].value;
            info->dps[i].delta = d;
            decorr_mono_buffer(s->sampleptrs[i][0], s->sampleptrs[i+1][0],
                               s->block_samples, info->dps, i);
        }

        bits = log2mono(s->sampleptrs[i][0], s->block_samples, info->log_limit);
        if (bits >= info->best_bits)
            break;

        lower = 1;
        info->best_bits = bits;
        CLEAR(s->decorr_passes);
        memcpy(s->decorr_passes, info->dps, sizeof(info->dps[0]) * i);
        memcpy(s->sampleptrs[info->nterms + 1][0], s->sampleptrs[i][0],
               s->block_samples * 4);
    }

    for (d = delta + 1; !lower && d <= 7; d++) {
        int i;

        for (i = 0; i < info->nterms && s->decorr_passes[i].value; i++) {
            info->dps[i].value = s->decorr_passes[i].value;
            info->dps[i].delta = d;
            decorr_mono_buffer(s->sampleptrs[i][0], s->sampleptrs[i+1][0],
                               s->block_samples, info->dps, i);
        }

        bits = log2mono(s->sampleptrs[i][0], s->block_samples, info->log_limit);
        if (bits >= info->best_bits)
            break;

        info->best_bits = bits;
        CLEAR(s->decorr_passes);
        memcpy(s->decorr_passes, info->dps, sizeof(info->dps[0]) * i);
        memcpy(s->sampleptrs[info->nterms + 1][0], s->sampleptrs[i][0],
               s->block_samples * 4);
    }
}
