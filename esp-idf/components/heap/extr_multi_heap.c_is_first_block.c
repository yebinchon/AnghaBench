
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const first_block; } ;
typedef TYPE_1__ heap_t ;
typedef int heap_block_t ;



__attribute__((used)) static inline bool is_first_block(const heap_t *heap, const heap_block_t *block)
{
    return (block == &heap->first_block);
}
