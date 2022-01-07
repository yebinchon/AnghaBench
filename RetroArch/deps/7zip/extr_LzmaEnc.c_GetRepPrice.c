
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t** prices; } ;
struct TYPE_6__ {TYPE_1__ repLenEnc; } ;
typedef TYPE_2__ CLzmaEnc ;


 size_t GetPureRepPrice (TYPE_2__*,size_t,size_t,size_t) ;
 size_t LZMA_MATCH_LEN_MIN ;

__attribute__((used)) static uint32_t GetRepPrice(CLzmaEnc *p, uint32_t repIndex, uint32_t len, uint32_t state, uint32_t posState)
{
  return p->repLenEnc.prices[posState][len - LZMA_MATCH_LEN_MIN] +
    GetPureRepPrice(p, repIndex, state, posState);
}
