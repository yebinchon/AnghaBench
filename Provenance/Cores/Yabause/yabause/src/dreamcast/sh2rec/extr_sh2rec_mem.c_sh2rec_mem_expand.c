
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_6__ {TYPE_2__* freespace; TYPE_1__ base; } ;
typedef TYPE_3__ sh2rec_mem_usedblock ;
struct TYPE_5__ {int size; int ptr; } ;



int sh2rec_mem_expand(void *block, int amt) {
    sh2rec_mem_usedblock *b = (sh2rec_mem_usedblock *)block;


    if(b->freespace->size > amt) {
        b->freespace->size -= amt;
        b->base.size += amt;
        b->freespace->ptr += amt;
        return 1;
    }

    return 0;
}
