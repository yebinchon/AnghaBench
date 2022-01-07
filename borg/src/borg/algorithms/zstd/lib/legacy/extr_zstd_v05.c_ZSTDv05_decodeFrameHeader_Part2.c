
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int windowLog; } ;
struct TYPE_4__ {size_t headerSize; TYPE_2__ params; } ;
typedef TYPE_1__ ZSTDv05_DCtx ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_32bits () ;
 size_t ZSTDv05_getFrameParams (TYPE_2__*,void const*,size_t) ;
 int frameParameter_unsupported ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv05_decodeFrameHeader_Part2(ZSTDv05_DCtx* zc, const void* src, size_t srcSize)
{
    size_t result;
    if (srcSize != zc->headerSize)
        return ERROR(srcSize_wrong);
    result = ZSTDv05_getFrameParams(&(zc->params), src, srcSize);
    if ((MEM_32bits()) && (zc->params.windowLog > 25)) return ERROR(frameParameter_unsupported);
    return result;
}
