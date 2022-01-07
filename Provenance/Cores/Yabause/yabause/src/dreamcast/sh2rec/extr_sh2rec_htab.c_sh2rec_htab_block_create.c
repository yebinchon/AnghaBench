
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* u32 ;
typedef int u16 ;
struct TYPE_5__ {int length; int * block; int * ptr; void* pc; scalar_t__ cycles; void* start_pc; } ;
typedef TYPE_1__ sh2rec_block_t ;
struct TYPE_6__ {TYPE_1__ block; struct TYPE_6__* next; } ;
typedef TYPE_2__ htab_entry_t ;


 int hash_addr (void*) ;
 scalar_t__ sh2rec_mem_alloc (int) ;
 TYPE_2__** table ;

sh2rec_block_t *sh2rec_htab_block_create(u32 addr, int length) {
    uint8_t *ptr;
    htab_entry_t *ent;
    int index = hash_addr(addr);

    ptr = (uint8_t *)sh2rec_mem_alloc(length + sizeof(htab_entry_t));
    ent = (htab_entry_t *)ptr;
    ent->block.block = (u16 *)(ptr + sizeof(htab_entry_t));


    ent->block.start_pc = addr;
    ent->block.cycles = 0;
    ent->block.pc = addr;
    ent->block.length = length;
    ent->block.ptr = ent->block.block;



    ent->next = table[index];
    table[index] = ent;

    return &ent->block;
}
