
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int AV_RL64 (int const*) ;
 int ROT (int ,int) ;
 int c1 ;
 int c2 ;

__attribute__((used)) static uint64_t inline get_k1(const uint8_t *src)
{
    uint64_t k = AV_RL64(src);
    k *= c1;
    k = ROT(k, 31);
    k *= c2;
    return k;
}
