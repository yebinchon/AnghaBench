
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int size; int * next; int * prev; } ;
typedef TYPE_1__ sh2rec_mem_block ;
struct TYPE_6__ {int * next; } ;
typedef TYPE_2__ sh2rec_mem_allocblock ;


 int SH2REC_MEM_INITIAL ;
 TYPE_2__* allocblocks ;
 int cur_allocation ;
 TYPE_1__* freeblocks ;
 scalar_t__ malloc (int) ;

int sh2rec_mem_init(void) {
    sh2rec_mem_block *initblock;
    sh2rec_mem_allocblock *allocblock;
    uint8_t *block;


    block = (uint8_t *)malloc(SH2REC_MEM_INITIAL);
    allocblock = (sh2rec_mem_allocblock *)block;
    initblock = (sh2rec_mem_block *)(block + sizeof(sh2rec_mem_allocblock));
    cur_allocation = SH2REC_MEM_INITIAL;


    initblock->size = SH2REC_MEM_INITIAL - sizeof(sh2rec_mem_allocblock) -
        sizeof(sh2rec_mem_block);
    initblock->prev = ((void*)0);
    initblock->next = ((void*)0);

    allocblock->next = ((void*)0);
    allocblocks = allocblock;


    freeblocks = initblock;

    return 0;
}
