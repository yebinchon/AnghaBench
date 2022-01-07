
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int * ff_reverse ;
 int put_bits (int *,int,int ) ;

__attribute__((used)) static inline void asv2_put_bits(PutBitContext *pb, int n, int v)
{
    put_bits(pb, n, ff_reverse[v << (8 - n)]);
}
