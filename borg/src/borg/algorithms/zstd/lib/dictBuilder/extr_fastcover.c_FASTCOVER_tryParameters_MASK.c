#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  zParams; } ;
typedef  TYPE_2__ ZDICT_cover_params_t ;
typedef  int U64 ;
struct TYPE_23__ {size_t dictBufferCapacity; int /*<<< orphan*/  best; TYPE_2__ parameters; TYPE_6__* ctx; } ;
typedef  TYPE_3__ U32 ;
typedef  TYPE_3__ U16 ;
struct TYPE_21__ {int finalize; } ;
struct TYPE_24__ {int f; int nbTrainSamples; int /*<<< orphan*/  nbSamples; int /*<<< orphan*/  offsets; int /*<<< orphan*/  samples; int /*<<< orphan*/  samplesSizes; TYPE_1__ accelParams; int /*<<< orphan*/  freqs; } ;
typedef  TYPE_3__ FASTCOVER_tryParameters_data_t ;
typedef  TYPE_6__ FASTCOVER_ctx_t ;
typedef  TYPE_3__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,TYPE_2__ const,TYPE_3__* const,size_t) ; 
 size_t FUNC1 (TYPE_2__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__* const,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (TYPE_6__ const* const,TYPE_3__*,TYPE_3__* const,size_t,TYPE_2__ const,TYPE_3__*) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC5 (TYPE_3__* const,size_t,TYPE_3__* const,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(void *opaque)
{
  /* Save parameters as local variables */
  FASTCOVER_tryParameters_data_t *const data = (FASTCOVER_tryParameters_data_t *)opaque;
  const FASTCOVER_ctx_t *const ctx = data->ctx;
  const ZDICT_cover_params_t parameters = data->parameters;
  size_t dictBufferCapacity = data->dictBufferCapacity;
  size_t totalCompressedSize = FUNC3(GENERIC);
  /* Initialize array to keep track of frequency of dmer within activeSegment */
  U16* segmentFreqs = (U16 *)FUNC7(((U64)1 << ctx->f), sizeof(U16));
  /* Allocate space for hash table, dict, and freqs */
  BYTE *const dict = (BYTE * const)FUNC9(dictBufferCapacity);
  U32 *freqs = (U32*) FUNC9(((U64)1 << ctx->f) * sizeof(U32));
  if (!segmentFreqs || !dict || !freqs) {
    FUNC2(1, "Failed to allocate buffers: out of memory\n");
    goto _cleanup;
  }
  /* Copy the frequencies because we need to modify them */
  FUNC10(freqs, ctx->freqs, ((U64)1 << ctx->f) * sizeof(U32));
  /* Build the dictionary */
  { const size_t tail = FUNC4(ctx, freqs, dict, dictBufferCapacity,
                                                  parameters, segmentFreqs);
    const unsigned nbFinalizeSamples = (unsigned)(ctx->nbTrainSamples * ctx->accelParams.finalize / 100);
    dictBufferCapacity = FUNC5(
        dict, dictBufferCapacity, dict + tail, dictBufferCapacity - tail,
        ctx->samples, ctx->samplesSizes, nbFinalizeSamples, parameters.zParams);
    if (FUNC6(dictBufferCapacity)) {
      FUNC2(1, "Failed to finalize dictionary\n");
      goto _cleanup;
    }
  }
  /* Check total compressed size */
  totalCompressedSize = FUNC1(parameters, ctx->samplesSizes,
                                                       ctx->samples, ctx->offsets,
                                                       ctx->nbTrainSamples, ctx->nbSamples,
                                                       dict, dictBufferCapacity);
_cleanup:
  FUNC0(data->best, totalCompressedSize, parameters, dict,
                    dictBufferCapacity);
  FUNC8(data);
  FUNC8(segmentFreqs);
  FUNC8(dict);
  FUNC8(freqs);
}