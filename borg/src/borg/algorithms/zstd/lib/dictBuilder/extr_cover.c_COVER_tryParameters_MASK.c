#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  zParams; scalar_t__ d; scalar_t__ k; } ;
typedef  TYPE_1__ ZDICT_cover_params_t ;
struct TYPE_19__ {size_t dictBufferCapacity; int /*<<< orphan*/  best; TYPE_1__ parameters; TYPE_4__* ctx; } ;
typedef  TYPE_2__ U32 ;
struct TYPE_20__ {int suffixSize; int /*<<< orphan*/  nbSamples; scalar_t__ nbTrainSamples; int /*<<< orphan*/  offsets; int /*<<< orphan*/  samples; int /*<<< orphan*/  samplesSizes; int /*<<< orphan*/  freqs; } ;
typedef  TYPE_2__ COVER_tryParameters_data_t ;
typedef  int /*<<< orphan*/  COVER_map_t ;
typedef  TYPE_4__ COVER_ctx_t ;
typedef  TYPE_2__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,TYPE_1__ const,TYPE_2__* const,size_t) ; 
 size_t FUNC1 (TYPE_4__ const* const,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__* const,size_t,TYPE_1__ const) ; 
 size_t FUNC2 (TYPE_1__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__* const,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC7 (TYPE_2__* const,size_t,TYPE_2__* const,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__* const) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(void *opaque) {
  /* Save parameters as local variables */
  COVER_tryParameters_data_t *const data = (COVER_tryParameters_data_t *)opaque;
  const COVER_ctx_t *const ctx = data->ctx;
  const ZDICT_cover_params_t parameters = data->parameters;
  size_t dictBufferCapacity = data->dictBufferCapacity;
  size_t totalCompressedSize = FUNC6(GENERIC);
  /* Allocate space for hash table, dict, and freqs */
  COVER_map_t activeDmers;
  BYTE *const dict = (BYTE * const)FUNC10(dictBufferCapacity);
  U32 *freqs = (U32 *)FUNC10(ctx->suffixSize * sizeof(U32));
  if (!FUNC4(&activeDmers, parameters.k - parameters.d + 1)) {
    FUNC5(1, "Failed to allocate dmer map: out of memory\n");
    goto _cleanup;
  }
  if (!dict || !freqs) {
    FUNC5(1, "Failed to allocate buffers: out of memory\n");
    goto _cleanup;
  }
  /* Copy the frequencies because we need to modify them */
  FUNC11(freqs, ctx->freqs, ctx->suffixSize * sizeof(U32));
  /* Build the dictionary */
  {
    const size_t tail = FUNC1(ctx, freqs, &activeDmers, dict,
                                              dictBufferCapacity, parameters);
    dictBufferCapacity = FUNC7(
        dict, dictBufferCapacity, dict + tail, dictBufferCapacity - tail,
        ctx->samples, ctx->samplesSizes, (unsigned)ctx->nbTrainSamples,
        parameters.zParams);
    if (FUNC8(dictBufferCapacity)) {
      FUNC5(1, "Failed to finalize dictionary\n");
      goto _cleanup;
    }
  }
  /* Check total compressed size */
  totalCompressedSize = FUNC2(parameters, ctx->samplesSizes,
                                                       ctx->samples, ctx->offsets,
                                                       ctx->nbTrainSamples, ctx->nbSamples,
                                                       dict, dictBufferCapacity);

_cleanup:
  FUNC0(data->best, totalCompressedSize, parameters, dict,
                    dictBufferCapacity);
  FUNC9(data);
  FUNC3(&activeDmers);
  if (dict) {
    FUNC9(dict);
  }
  if (freqs) {
    FUNC9(freqs);
  }
}