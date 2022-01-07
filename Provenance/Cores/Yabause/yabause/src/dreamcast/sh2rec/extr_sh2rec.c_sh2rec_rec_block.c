
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ block; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int icache_flush_range (int ,scalar_t__) ;
 int sh2rec_rec_inst (TYPE_1__*,int ) ;

int sh2rec_rec_block(sh2rec_block_t *b) {
    int done = 0;

    while(!done) {
        done = sh2rec_rec_inst(b, 0);
    }


    icache_flush_range((uint32)b->block, ((u32)b->ptr) - ((u32)b->block));

    return 0;
}
