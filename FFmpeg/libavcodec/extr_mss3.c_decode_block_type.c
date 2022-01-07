
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t last_type; int * bt_model; } ;
typedef int RangeCoder ;
typedef TYPE_1__ BlockTypeContext ;


 size_t rac_get_model_sym (int *,int *) ;

__attribute__((used)) static int decode_block_type(RangeCoder *c, BlockTypeContext *bt)
{
    bt->last_type = rac_get_model_sym(c, &bt->bt_model[bt->last_type]);

    return bt->last_type;
}
