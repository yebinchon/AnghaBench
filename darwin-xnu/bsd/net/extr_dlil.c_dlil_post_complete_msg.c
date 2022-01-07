
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kev_msg {int dummy; } ;
struct ifnet {int dummy; } ;


 int ifnet_increment_generation (struct ifnet*) ;
 int kev_post_msg (struct kev_msg*) ;
 int necp_update_all_clients () ;

int
dlil_post_complete_msg(struct ifnet *ifp, struct kev_msg *event)
{
 if (ifp != ((void*)0)) {
  ifnet_increment_generation(ifp);
 }





 return (kev_post_msg(event));
}
