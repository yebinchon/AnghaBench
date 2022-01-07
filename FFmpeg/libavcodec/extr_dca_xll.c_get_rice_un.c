
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits_left (int *) ;
 unsigned int get_bits_long (int *,int) ;
 unsigned int get_unary (int *,int,int ) ;

__attribute__((used)) static int get_rice_un(GetBitContext *gb, int k)
{
    unsigned int v = get_unary(gb, 1, get_bits_left(gb));
    return (v << k) | get_bits_long(gb, k);
}
