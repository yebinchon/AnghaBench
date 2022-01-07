
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; scalar_t__ bits; } ;
typedef int GetBitContext ;


 TYPE_1__* eob_run_table ;
 scalar_t__ get_bits (int *,scalar_t__) ;

__attribute__((used)) static inline int get_eob_run(GetBitContext *gb, int token)
{
    int v = eob_run_table[token].base;
    if (eob_run_table[token].bits)
        v += get_bits(gb, eob_run_table[token].bits);
    return v;
}
