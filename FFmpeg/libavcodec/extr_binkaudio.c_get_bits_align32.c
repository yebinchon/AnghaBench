
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits_count (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void get_bits_align32(GetBitContext *s)
{
    int n = (-get_bits_count(s)) & 31;
    if (n) skip_bits(s, n);
}
