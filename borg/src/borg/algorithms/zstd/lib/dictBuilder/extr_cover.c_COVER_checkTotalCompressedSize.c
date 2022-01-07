
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;
struct TYPE_4__ {int compressionLevel; } ;
struct TYPE_5__ {double splitPoint; TYPE_1__ zParams; } ;
typedef TYPE_2__ ZDICT_cover_params_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t MAX (size_t const,size_t) ;
 size_t ZSTD_compressBound (size_t) ;
 size_t ZSTD_compress_usingCDict (int *,void*,size_t,int const*,size_t const,int *) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createCDict (int * const,size_t,int ) ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeCDict (int *) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int free (void*) ;
 void* malloc (size_t) ;

size_t COVER_checkTotalCompressedSize(const ZDICT_cover_params_t parameters,
                                    const size_t *samplesSizes, const BYTE *samples,
                                    size_t *offsets,
                                    size_t nbTrainSamples, size_t nbSamples,
                                    BYTE *const dict, size_t dictBufferCapacity) {
  size_t totalCompressedSize = ERROR(GENERIC);

  ZSTD_CCtx *cctx;
  ZSTD_CDict *cdict;
  void *dst;

  size_t dstCapacity;
  size_t i;

  {
    size_t maxSampleSize = 0;
    i = parameters.splitPoint < 1.0 ? nbTrainSamples : 0;
    for (; i < nbSamples; ++i) {
      maxSampleSize = MAX(samplesSizes[i], maxSampleSize);
    }
    dstCapacity = ZSTD_compressBound(maxSampleSize);
    dst = malloc(dstCapacity);
  }

  cctx = ZSTD_createCCtx();
  cdict = ZSTD_createCDict(dict, dictBufferCapacity,
                           parameters.zParams.compressionLevel);
  if (!dst || !cctx || !cdict) {
    goto _compressCleanup;
  }

  totalCompressedSize = dictBufferCapacity;
  i = parameters.splitPoint < 1.0 ? nbTrainSamples : 0;
  for (; i < nbSamples; ++i) {
    const size_t size = ZSTD_compress_usingCDict(
        cctx, dst, dstCapacity, samples + offsets[i],
        samplesSizes[i], cdict);
    if (ZSTD_isError(size)) {
      totalCompressedSize = ERROR(GENERIC);
      goto _compressCleanup;
    }
    totalCompressedSize += size;
  }
_compressCleanup:
  ZSTD_freeCCtx(cctx);
  ZSTD_freeCDict(cdict);
  if (dst) {
    free(dst);
  }
  return totalCompressedSize;
}
