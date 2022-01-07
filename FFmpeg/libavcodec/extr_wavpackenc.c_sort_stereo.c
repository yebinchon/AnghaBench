
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {int nterms; TYPE_5__* dps; int best_bits; int log_limit; } ;
typedef TYPE_1__ WavPackExtraInfo ;
struct TYPE_16__ {int block_samples; TYPE_5__*** sampleptrs; TYPE_5__* decorr_passes; } ;
typedef TYPE_2__ WavPackEncodeContext ;
struct TYPE_17__ {scalar_t__ value; } ;


 int CLEAR (TYPE_5__*) ;
 int decorr_stereo_buffer (TYPE_1__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int) ;
 int log2stereo (TYPE_5__*,TYPE_5__*,int,int ) ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;

__attribute__((used)) static void sort_stereo(WavPackEncodeContext *s, WavPackExtraInfo *info)
{
    int reversed = 1;
    uint32_t bits;

    while (reversed) {
        int ri, i;

        memcpy(info->dps, s->decorr_passes, sizeof(s->decorr_passes));
        reversed = 0;

        for (ri = 0; ri < info->nterms && s->decorr_passes[ri].value; ri++) {

            if (ri + 1 >= info->nterms || !s->decorr_passes[ri+1].value)
                break;

            if (s->decorr_passes[ri].value == s->decorr_passes[ri+1].value) {
                decorr_stereo_buffer(info,
                                     s->sampleptrs[ri ][0], s->sampleptrs[ri ][1],
                                     s->sampleptrs[ri+1][0], s->sampleptrs[ri+1][1],
                                     s->block_samples, ri);
                continue;
            }

            info->dps[ri ] = s->decorr_passes[ri+1];
            info->dps[ri+1] = s->decorr_passes[ri ];

            for (i = ri; i < info->nterms && s->decorr_passes[i].value; i++)
                decorr_stereo_buffer(info,
                                     s->sampleptrs[i ][0], s->sampleptrs[i ][1],
                                     s->sampleptrs[i+1][0], s->sampleptrs[i+1][1],
                                     s->block_samples, i);

            bits = log2stereo(s->sampleptrs[i][0], s->sampleptrs[i][1],
                              s->block_samples, info->log_limit);

            if (bits < info->best_bits) {
                reversed = 1;
                info->best_bits = bits;
                CLEAR(s->decorr_passes);
                memcpy(s->decorr_passes, info->dps, sizeof(info->dps[0]) * i);
                memcpy(s->sampleptrs[info->nterms + 1][0],
                       s->sampleptrs[i][0], s->block_samples * 4);
                memcpy(s->sampleptrs[info->nterms + 1][1],
                       s->sampleptrs[i][1], s->block_samples * 4);
            } else {
                info->dps[ri ] = s->decorr_passes[ri ];
                info->dps[ri+1] = s->decorr_passes[ri+1];
                decorr_stereo_buffer(info,
                                     s->sampleptrs[ri ][0], s->sampleptrs[ri ][1],
                                     s->sampleptrs[ri+1][0], s->sampleptrs[ri+1][1],
                                     s->block_samples, ri);
            }
        }
    }
}
