
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ether_desc_blk_str {int n_max_used; scalar_t__ n_used; TYPE_1__* block_ptr; } ;
typedef scalar_t__ protocol_family_t ;
typedef TYPE_2__* ifnet_t ;
struct TYPE_5__ {scalar_t__ if_family_cookie; } ;
struct TYPE_4__ {scalar_t__ protocol_family; scalar_t__ type; } ;


 int FREE (scalar_t__,int ) ;
 int M_IFADDR ;

int
ether_del_proto(ifnet_t ifp, protocol_family_t protocol_family)
{
 struct ether_desc_blk_str *desc_blk =
     (struct ether_desc_blk_str *)ifp->if_family_cookie;
 u_int32_t current = 0;
 int found = 0;

 if (desc_blk == ((void*)0))
  return (0);

 for (current = desc_blk->n_max_used; current > 0; current--) {
  if (desc_blk->block_ptr[current - 1].protocol_family ==
      protocol_family) {
   found = 1;
   desc_blk->block_ptr[current - 1].type = 0;
   desc_blk->n_used--;
  }
 }

 if (desc_blk->n_used == 0) {
  FREE(ifp->if_family_cookie, M_IFADDR);
  ifp->if_family_cookie = 0;
 } else {

  for (; desc_blk->n_max_used > 0 &&
      desc_blk->block_ptr[desc_blk->n_max_used - 1].type == 0;
      desc_blk->n_max_used--)
   ;
 }

 return (0);
}
