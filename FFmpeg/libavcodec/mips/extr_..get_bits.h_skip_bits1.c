
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int skip_bits (int *,int) ;

__attribute__((used)) static inline void skip_bits1(GetBitContext *s)
{
    skip_bits(s, 1);
}
