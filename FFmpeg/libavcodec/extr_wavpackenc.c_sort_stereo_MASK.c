#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int nterms; TYPE_5__* dps; int /*<<< orphan*/  best_bits; int /*<<< orphan*/  log_limit; } ;
typedef  TYPE_1__ WavPackExtraInfo ;
struct TYPE_16__ {int block_samples; TYPE_5__*** sampleptrs; TYPE_5__* decorr_passes; } ;
typedef  TYPE_2__ WavPackEncodeContext ;
struct TYPE_17__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*,int) ; 

__attribute__((used)) static void FUNC4(WavPackEncodeContext *s, WavPackExtraInfo *info)
{
    int reversed = 1;
    uint32_t bits;

    while (reversed) {
        int ri, i;

        FUNC3(info->dps, s->decorr_passes, sizeof(s->decorr_passes));
        reversed = 0;

        for (ri = 0; ri < info->nterms && s->decorr_passes[ri].value; ri++) {

            if (ri + 1 >= info->nterms || !s->decorr_passes[ri+1].value)
                break;

            if (s->decorr_passes[ri].value == s->decorr_passes[ri+1].value) {
                FUNC1(info,
                                     s->sampleptrs[ri  ][0], s->sampleptrs[ri  ][1],
                                     s->sampleptrs[ri+1][0], s->sampleptrs[ri+1][1],
                                     s->block_samples, ri);
                continue;
            }

            info->dps[ri  ] = s->decorr_passes[ri+1];
            info->dps[ri+1] = s->decorr_passes[ri  ];

            for (i = ri; i < info->nterms && s->decorr_passes[i].value; i++)
                FUNC1(info,
                                     s->sampleptrs[i  ][0], s->sampleptrs[i  ][1],
                                     s->sampleptrs[i+1][0], s->sampleptrs[i+1][1],
                                     s->block_samples, i);

            bits = FUNC2(s->sampleptrs[i][0], s->sampleptrs[i][1],
                              s->block_samples, info->log_limit);

            if (bits < info->best_bits) {
                reversed = 1;
                info->best_bits = bits;
                FUNC0(s->decorr_passes);
                FUNC3(s->decorr_passes, info->dps, sizeof(info->dps[0]) * i);
                FUNC3(s->sampleptrs[info->nterms + 1][0],
                       s->sampleptrs[i][0], s->block_samples * 4);
                FUNC3(s->sampleptrs[info->nterms + 1][1],
                       s->sampleptrs[i][1], s->block_samples * 4);
            } else {
                info->dps[ri  ] = s->decorr_passes[ri  ];
                info->dps[ri+1] = s->decorr_passes[ri+1];
                FUNC1(info,
                                     s->sampleptrs[ri  ][0], s->sampleptrs[ri  ][1],
                                     s->sampleptrs[ri+1][0], s->sampleptrs[ri+1][1],
                                     s->block_samples, ri);
            }
        }
    }
}