
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int header; } ;
typedef TYPE_1__ heap_block_t ;


 int NEXT_BLOCK_MASK ;

__attribute__((used)) static inline bool is_last_block(const heap_block_t *block)
{
    return (block->header & NEXT_BLOCK_MASK) == 0;
}
