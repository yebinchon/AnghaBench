
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* u64; } ;
typedef TYPE_1__ av_aes_block ;


 int AV_WN64 (int *,int) ;

__attribute__((used)) static inline void addkey_d(uint8_t *dst, const av_aes_block *src,
                            const av_aes_block *round_key)
{
    AV_WN64(dst, src->u64[0] ^ round_key->u64[0]);
    AV_WN64(dst + 8, src->u64[1] ^ round_key->u64[1]);
}
