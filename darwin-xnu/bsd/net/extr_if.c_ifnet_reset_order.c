
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t u_int32_t ;
struct ifnet {int dummy; } ;


 int EINVAL ;
 size_t IFSCOPE_NONE ;
 struct ifnet* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct ifnet*,int ) ;
 int VERIFY (int) ;
 scalar_t__ if_index ;
 scalar_t__ if_ordered_count ;
 int if_ordered_link ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_exclusive () ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int ifnet_ordered_head ;
 int ifnet_remove_from_ordered_list (struct ifnet*) ;
 int necp_update_all_clients () ;

__attribute__((used)) static int
ifnet_reset_order(u_int32_t *ordered_indices, u_int32_t count)
{
 struct ifnet *ifp = ((void*)0);
 int error = 0;

 ifnet_head_lock_exclusive();
 for (u_int32_t order_index = 0; order_index < count; order_index++) {
  if (ordered_indices[order_index] == IFSCOPE_NONE ||
      ordered_indices[order_index] > (uint32_t)if_index) {
   error = EINVAL;
   ifnet_head_done();
   return (error);
  }
 }

 for (ifp = TAILQ_FIRST(&ifnet_ordered_head); ifp != ((void*)0);
     ifp = TAILQ_FIRST(&ifnet_ordered_head)) {
  ifnet_lock_exclusive(ifp);
  ifnet_remove_from_ordered_list(ifp);
  ifnet_lock_done(ifp);
 }

 VERIFY(if_ordered_count == 0);

 for (u_int32_t order_index = 0; order_index < count; order_index++) {
  u_int32_t interface_index = ordered_indices[order_index];
  ifp = ifindex2ifnet[interface_index];
  if (ifp == ((void*)0)) {
   continue;
  }
  ifnet_lock_exclusive(ifp);
  TAILQ_INSERT_TAIL(&ifnet_ordered_head, ifp, if_ordered_link);
  ifnet_lock_done(ifp);
  if_ordered_count++;
 }

 ifnet_head_done();

 necp_update_all_clients();

 return (error);
}
