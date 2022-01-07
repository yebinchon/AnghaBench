
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

__attribute__((used)) static inline uint64_t get_k2(const uint8_t *src)
{
    uint64_t k = AV_RL64(src + 8);
    k *= c2;
    k = ROT(k, 33);
    k *= c1;
    return k;
}
