
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int show_bits (int *,int) ;

__attribute__((used)) static inline unsigned int show_bits1(GetBitContext *s)
{
    return show_bits(s, 1);
}
