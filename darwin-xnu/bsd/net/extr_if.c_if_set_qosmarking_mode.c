
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct kev_dl_rrc_state {int dummy; } ;
struct ifnet {int if_qosmarking_mode; int if_eflags; } ;


 int EINVAL ;
 int IFEF_QOSMARKING_CAPABLE ;
 int IFEF_QOSMARKING_ENABLED ;


 int KEV_DL_QOS_MODE_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int dlil_post_msg (struct ifnet*,int ,int ,int *,int) ;
 int net_qos_policy_capable_enabled ;

int
if_set_qosmarking_mode(struct ifnet *ifp, u_int32_t mode)
{
 int error = 0;
 u_int32_t old_mode = ifp->if_qosmarking_mode;

 switch (mode) {
  case 128:
   ifp->if_qosmarking_mode = 128;
   ifp->if_eflags &= ~IFEF_QOSMARKING_CAPABLE;
   break;
  case 129:
   ifp->if_qosmarking_mode = 129;
   ifp->if_eflags |= IFEF_QOSMARKING_CAPABLE;
   if (net_qos_policy_capable_enabled != 0)
    ifp->if_eflags |= IFEF_QOSMARKING_ENABLED;
   break;
  default:
   error = EINVAL;
   break;
 }
 if (error == 0 && old_mode != ifp->if_qosmarking_mode) {
  dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_QOS_MODE_CHANGED,
      ((void*)0), sizeof(struct kev_dl_rrc_state));

 }
 return (error);
}
