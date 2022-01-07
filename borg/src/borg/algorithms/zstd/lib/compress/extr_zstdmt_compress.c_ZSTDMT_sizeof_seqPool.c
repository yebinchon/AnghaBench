
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDMT_seqPool ;


 size_t ZSTDMT_sizeof_bufferPool (int *) ;

__attribute__((used)) static size_t ZSTDMT_sizeof_seqPool(ZSTDMT_seqPool* seqPool)
{
    return ZSTDMT_sizeof_bufferPool(seqPool);
}
