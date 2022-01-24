#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_4__ {unsigned int skip; } ;
struct TYPE_5__ {unsigned int f; unsigned int d; int nbTrainSamples; int nbSamples; size_t* offsets; scalar_t__ samples; TYPE_1__ accelParams; } ;
typedef  TYPE_2__ FASTCOVER_ctx_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,unsigned int const,unsigned int const) ; 
 unsigned int FUNC1 (unsigned int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(U32* freqs, const FASTCOVER_ctx_t* ctx)
{
    const unsigned f = ctx->f;
    const unsigned d = ctx->d;
    const unsigned skip = ctx->accelParams.skip;
    const unsigned readLength = FUNC1(d, 8);
    size_t i;
    FUNC2(ctx->nbTrainSamples >= 5);
    FUNC2(ctx->nbTrainSamples <= ctx->nbSamples);
    for (i = 0; i < ctx->nbTrainSamples; i++) {
        size_t start = ctx->offsets[i];  /* start of current dmer */
        size_t const currSampleEnd = ctx->offsets[i+1];
        while (start + readLength <= currSampleEnd) {
            const size_t dmerIndex = FUNC0(ctx->samples + start, f, d);
            freqs[dmerIndex]++;
            start = start + skip + 1;
        }
    }
}