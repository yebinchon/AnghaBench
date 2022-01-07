
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ZSTD_DDict ;
struct TYPE_7__ {scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;
typedef int U32 ;
typedef int BYTE ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int MEM_readLE32 (void const*) ;
 void* ZSTD_DDict_dictContent (int const*) ;
 size_t ZSTD_DDict_dictSize (int const*) ;
 size_t ZSTD_FRAMEHEADERSIZE_PREFIX ;
 int ZSTD_MAGICNUMBER ;
 int const ZSTD_MAGIC_SKIPPABLE_MASK ;
 int const ZSTD_MAGIC_SKIPPABLE_START ;
 int ZSTD_checkContinuity (TYPE_1__*,void*) ;
 int ZSTD_decompressBegin_usingDDict (TYPE_1__*,int const*) ;
 int ZSTD_decompressBegin_usingDict (TYPE_1__*,void const*,size_t) ;
 size_t ZSTD_decompressFrame (TYPE_1__*,void*,size_t,void const**,size_t*) ;
 size_t ZSTD_decompressLegacy (void*,size_t,void const*,size_t const,void const*,size_t) ;
 scalar_t__ ZSTD_error_prefix_unknown ;
 size_t ZSTD_findFrameCompressedSizeLegacy (void const*,size_t) ;
 scalar_t__ ZSTD_getErrorCode (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 scalar_t__ ZSTD_isLegacy (void const*,size_t) ;
 int assert (int) ;
 int memory_allocation ;
 size_t readSkippableFrameSize (void const*,size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompressMultiFrame(ZSTD_DCtx* dctx,
                                        void* dst, size_t dstCapacity,
                                  const void* src, size_t srcSize,
                                  const void* dict, size_t dictSize,
                                  const ZSTD_DDict* ddict)
{
    void* const dststart = dst;
    int moreThan1Frame = 0;

    DEBUGLOG(5, "ZSTD_decompressMultiFrame");
    assert(dict==((void*)0) || ddict==((void*)0));

    if (ddict) {
        dict = ZSTD_DDict_dictContent(ddict);
        dictSize = ZSTD_DDict_dictSize(ddict);
    }

    while (srcSize >= ZSTD_FRAMEHEADERSIZE_PREFIX) {
        { U32 const magicNumber = MEM_readLE32(src);
            DEBUGLOG(4, "reading magic number %08X (expecting %08X)",
                        (unsigned)magicNumber, ZSTD_MAGICNUMBER);
            if ((magicNumber & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) {
                size_t const skippableSize = readSkippableFrameSize(src, srcSize);
                if (ZSTD_isError(skippableSize))
                    return skippableSize;
                if (srcSize < skippableSize) return ERROR(srcSize_wrong);

                src = (const BYTE *)src + skippableSize;
                srcSize -= skippableSize;
                continue;
        } }

        if (ddict) {

            CHECK_F(ZSTD_decompressBegin_usingDDict(dctx, ddict));
        } else {


            CHECK_F(ZSTD_decompressBegin_usingDict(dctx, dict, dictSize));
        }
        ZSTD_checkContinuity(dctx, dst);

        { const size_t res = ZSTD_decompressFrame(dctx, dst, dstCapacity,
                                                    &src, &srcSize);
            if ( (ZSTD_getErrorCode(res) == ZSTD_error_prefix_unknown)
              && (moreThan1Frame==1) ) {
                return ERROR(srcSize_wrong);
            }
            if (ZSTD_isError(res)) return res;
            assert(res <= dstCapacity);
            dst = (BYTE*)dst + res;
            dstCapacity -= res;
        }
        moreThan1Frame = 1;
    }

    if (srcSize) return ERROR(srcSize_wrong);

    return (BYTE*)dst - (BYTE*)dststart;
}
