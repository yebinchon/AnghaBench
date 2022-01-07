
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ start_pc; } ;
typedef TYPE_1__ sh2rec_block_t ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ block; } ;
typedef TYPE_2__ htab_entry_t ;


 size_t hash_addr (scalar_t__) ;
 TYPE_2__** table ;

sh2rec_block_t *sh2rec_htab_lookup(u32 addr) {
    htab_entry_t *i = table[hash_addr(addr)];


    while(i) {
        if(i->block.start_pc == addr) {
            return &i->block;
        }

        i = i->next;
    }


    return ((void*)0);
}
