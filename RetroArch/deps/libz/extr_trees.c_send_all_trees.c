
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bits_sent; scalar_t__ dyn_dtree; scalar_t__ dyn_ltree; TYPE_1__* bl_tree; } ;
typedef TYPE_2__ deflate_state ;
typedef int ct_data ;
struct TYPE_6__ {int Len; } ;


 int Assert (int,char*) ;
 int BL_CODES ;
 int D_CODES ;
 int L_CODES ;
 int Tracev (int ) ;
 size_t* bl_order ;
 int send_bits (TYPE_2__*,int,int) ;
 int send_tree (TYPE_2__*,int *,int) ;
 int stderr ;

__attribute__((used)) static void send_all_trees(deflate_state *s, int lcodes, int dcodes, int blcodes)
{
   int rank;

   Assert (lcodes >= 257 && dcodes >= 1 && blcodes >= 4, "not enough codes");
   Assert (lcodes <= L_CODES && dcodes <= D_CODES && blcodes <= BL_CODES,
         "too many codes");
   Tracev((stderr, "\nbl counts: "));
   send_bits(s, lcodes-257, 5);
   send_bits(s, dcodes-1, 5);
   send_bits(s, blcodes-4, 4);
   for (rank = 0; rank < blcodes; rank++) {
      Tracev((stderr, "\nbl code %2d ", bl_order[rank]));
      send_bits(s, s->bl_tree[bl_order[rank]].Len, 3);
   }
   Tracev((stderr, "\nbl tree: sent %ld", s->bits_sent));

   send_tree(s, (ct_data *)s->dyn_ltree, lcodes-1);
   Tracev((stderr, "\nlit tree: sent %ld", s->bits_sent));

   send_tree(s, (ct_data *)s->dyn_dtree, dcodes-1);
   Tracev((stderr, "\ndist tree: sent %ld", s->bits_sent));
}
