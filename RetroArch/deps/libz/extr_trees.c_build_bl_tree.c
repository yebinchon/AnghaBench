
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree_desc ;
struct TYPE_9__ {int max_code; } ;
struct TYPE_8__ {int max_code; } ;
struct TYPE_11__ {int opt_len; int static_len; TYPE_3__* bl_tree; int bl_desc; TYPE_2__ d_desc; scalar_t__ dyn_dtree; TYPE_1__ l_desc; scalar_t__ dyn_ltree; } ;
typedef TYPE_4__ deflate_state ;
typedef int ct_data ;
struct TYPE_10__ {scalar_t__ Len; } ;


 int BL_CODES ;
 int Tracev (int ) ;
 size_t* bl_order ;
 int build_tree (TYPE_4__*,int *) ;
 int scan_tree (TYPE_4__*,int *,int ) ;
 int stderr ;

__attribute__((used)) static int build_bl_tree(deflate_state *s)
{
   int max_blindex;


   scan_tree(s, (ct_data *)s->dyn_ltree, s->l_desc.max_code);
   scan_tree(s, (ct_data *)s->dyn_dtree, s->d_desc.max_code);


   build_tree(s, (tree_desc *)(&(s->bl_desc)));
   for (max_blindex = BL_CODES-1; max_blindex >= 3; max_blindex--) {
      if (s->bl_tree[bl_order[max_blindex]].Len != 0) break;
   }

   s->opt_len += 3*(max_blindex+1) + 5+5+4;
   Tracev((stderr, "\ndyn trees: dyn %ld, stat %ld",
            s->opt_len, s->static_len));

   return max_blindex;
}
