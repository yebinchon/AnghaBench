
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSE_DEFAULT_TABLELOG ;
 int FSE_MAX_SYMBOL_VALUE ;
 size_t FSE_compress2 (void*,size_t,void const*,size_t,int ,int ) ;

size_t FSE_compress (void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    return FSE_compress2(dst, dstCapacity, src, srcSize, FSE_MAX_SYMBOL_VALUE, FSE_DEFAULT_TABLELOG);
}
