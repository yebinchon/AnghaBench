
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int PutBitContext ;


 int av_assert2 (int) ;
 int av_mod_uintp2 (int ,int) ;
 int put_bits (int *,int,int ) ;

__attribute__((used)) static inline void put_sbits(PutBitContext *pb, int n, int32_t value)
{
    av_assert2(n >= 0 && n <= 31);

    put_bits(pb, n, av_mod_uintp2(value, n));
}
