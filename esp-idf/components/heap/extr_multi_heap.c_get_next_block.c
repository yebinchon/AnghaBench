
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {intptr_t header; } ;
typedef TYPE_1__ heap_block_t ;


 intptr_t NEXT_BLOCK_MASK ;
 int assert (int) ;

__attribute__((used)) static inline heap_block_t *get_next_block(const heap_block_t *block)
{
    intptr_t next = block->header & NEXT_BLOCK_MASK;
    if (next == 0) {
        return ((void*)0);
    }
    assert(next > (intptr_t)block);
    return (heap_block_t *)next;
}
