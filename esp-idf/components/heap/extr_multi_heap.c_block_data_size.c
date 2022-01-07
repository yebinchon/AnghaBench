
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ header; } ;
typedef TYPE_1__ heap_block_t ;


 intptr_t NEXT_BLOCK_MASK ;

__attribute__((used)) static inline size_t block_data_size(const heap_block_t *block)
{
    intptr_t next = (intptr_t)block->header & NEXT_BLOCK_MASK;
    intptr_t this = (intptr_t)block;
    if (next == 0) {
        return 0;
    }
    return next - this - sizeof(block->header);
}
