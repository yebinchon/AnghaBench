
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrap ;
typedef int uint8_t ;
struct SwsContext {int dummy; } ;


 int testxmmclobbers (int (*) (struct SwsContext*,int const* const*,int const*,int,int,int * const*,int const*),struct SwsContext*,int const* const*,int const*,int,int,int * const*,int const*) ;

wrap(sws_scale(struct SwsContext *c, const uint8_t *const srcSlice[],
               const int srcStride[], int srcSliceY, int srcSliceH,
               uint8_t *const dst[], const int dstStride[]))
{
    testxmmclobbers(sws_scale, c, srcSlice, srcStride, srcSliceY,
                    srcSliceH, dst, dstStride);
}
