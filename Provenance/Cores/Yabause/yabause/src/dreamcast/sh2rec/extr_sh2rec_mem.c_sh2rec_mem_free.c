
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int size; TYPE_1__* prev; TYPE_4__* next; } ;
struct TYPE_10__ {TYPE_2__ base; int * freespace; } ;
typedef TYPE_3__ sh2rec_mem_usedblock ;
struct TYPE_11__ {TYPE_1__* prev; } ;
typedef TYPE_4__ sh2rec_mem_block ;
struct TYPE_8__ {TYPE_4__* next; } ;


 TYPE_4__* freeblocks ;
 TYPE_3__* usedblocks ;
 TYPE_3__* usedblocks_tail ;

void sh2rec_mem_free(void *block) {
    sh2rec_mem_usedblock *b = (sh2rec_mem_usedblock *)block;


    if(b->base.next) {
        b->base.next->prev = b->base.prev;
    }

    if(b->base.prev) {
        b->base.prev->next = b->base.next;
    }

    if(b == usedblocks) {
        usedblocks = (sh2rec_mem_usedblock *)b->base.next;
    }

    if(b == usedblocks_tail) {
        usedblocks_tail = (sh2rec_mem_usedblock *)b->base.prev;
    }



    b->freespace = ((void*)0);
    b->base.next = freeblocks;
    b->base.prev = ((void*)0);
    b->base.size += sizeof(sh2rec_mem_usedblock) - sizeof(sh2rec_mem_block);
    freeblocks = (sh2rec_mem_block *)b;
}
