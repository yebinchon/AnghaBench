
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * stat_desc; int dyn_tree; } ;
struct TYPE_8__ {int * stat_desc; int dyn_tree; } ;
struct TYPE_7__ {int * stat_desc; int dyn_tree; } ;
struct TYPE_10__ {int last_eob_len; long compressed_len; long bits_sent; scalar_t__ bi_valid; scalar_t__ bi_buf; TYPE_3__ bl_desc; int bl_tree; TYPE_2__ d_desc; int dyn_dtree; TYPE_1__ l_desc; int dyn_ltree; } ;
typedef TYPE_4__ deflate_state ;


 int init_block (TYPE_4__*) ;
 int static_bl_desc ;
 int static_d_desc ;
 int static_l_desc ;
 int tr_static_init () ;

void
_tr_init(deflate_state *s)
{
    tr_static_init();

    s->l_desc.dyn_tree = s->dyn_ltree;
    s->l_desc.stat_desc = &static_l_desc;

    s->d_desc.dyn_tree = s->dyn_dtree;
    s->d_desc.stat_desc = &static_d_desc;

    s->bl_desc.dyn_tree = s->bl_tree;
    s->bl_desc.stat_desc = &static_bl_desc;

    s->bi_buf = 0;
    s->bi_valid = 0;
    s->last_eob_len = 8;






    init_block(s);
}
