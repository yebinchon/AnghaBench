
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int get_bits_long (int *,int) ;

__attribute__((used)) static int get_linear(GetBitContext *gb, int n)
{
    unsigned int v = get_bits_long(gb, n);
    return (v >> 1) ^ -(v & 1);
}
