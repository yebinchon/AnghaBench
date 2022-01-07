
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size_in_bits; } ;
typedef TYPE_1__ GetBitContext ;


 int get_bits_count (TYPE_1__*) ;
 int skip_bits_long (TYPE_1__*,int) ;

__attribute__((used)) static inline int ff_dca_seek_bits(GetBitContext *s, int p)
{
    if (p < get_bits_count(s) || p > s->size_in_bits)
        return -1;
    skip_bits_long(s, p - get_bits_count(s));
    return 0;
}
