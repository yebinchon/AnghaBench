
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* u64; } ;
typedef TYPE_1__ av_aes_block ;



__attribute__((used)) static inline void addkey(av_aes_block *dst, const av_aes_block *src,
                          const av_aes_block *round_key)
{
    dst->u64[0] = src->u64[0] ^ round_key->u64[0];
    dst->u64[1] = src->u64[1] ^ round_key->u64[1];
}
