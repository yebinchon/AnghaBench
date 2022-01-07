
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ start_pc; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ block; } ;
typedef TYPE_2__ htab_entry_t ;


 int hash_addr (scalar_t__) ;
 int sh2rec_mem_free (TYPE_2__*) ;
 TYPE_2__** table ;

void sh2rec_htab_block_remove(u32 addr) {
    int index = hash_addr(addr);
    htab_entry_t *i, *tmp, *last;

    i = table[index];
    last = ((void*)0);


    while(i) {
        tmp = i->next;


        if(i->block.start_pc == addr) {

            if(last) {
                last->next = tmp;
            }
            else {
                table[index] = tmp;
            }


            sh2rec_mem_free(i);

            return;
        }

        last = i;
        i = tmp;
    }
}
