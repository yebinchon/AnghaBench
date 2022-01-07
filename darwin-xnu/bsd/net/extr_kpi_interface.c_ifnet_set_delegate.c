
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_12__ {int type; int family; int subfamily; int expensive; TYPE_1__* ifp; } ;
struct TYPE_13__ {char* if_xname; int if_type; int if_family; int if_subfamily; int if_eflags; TYPE_11__ if_delegated; } ;


 int EINVAL ;
 int ENXIO ;
 int IFEF_ECN_DISABLE ;
 int IFEF_ECN_ENABLE ;
 int IFEF_EXPENSIVE ;
 int KEV_DL_IFDELEGATE_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int bzero (TYPE_11__*,int) ;
 int dlil_post_msg (TYPE_1__*,int ,int ,int *,int ) ;
 int ifnet_decr_iorefcnt (TYPE_1__*) ;
 int ifnet_is_attached (TYPE_1__*,int) ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;
 int ifnet_reference (TYPE_1__*) ;
 int ifnet_release (TYPE_1__*) ;
 int printf (char*,char*,char*,...) ;

errno_t
ifnet_set_delegate(ifnet_t ifp, ifnet_t delegated_ifp)
{
 ifnet_t odifp = ((void*)0);

 if (ifp == ((void*)0))
  return (EINVAL);
 else if (!ifnet_is_attached(ifp, 1))
  return (ENXIO);

 ifnet_lock_exclusive(ifp);
 odifp = ifp->if_delegated.ifp;
 if (odifp != ((void*)0) && odifp == delegated_ifp) {

  ifnet_lock_done(ifp);
  goto done;
 }

 ifnet_t delegate_check_ifp = delegated_ifp;
 while (delegate_check_ifp != ((void*)0)) {
  if (delegate_check_ifp == ifp) {
   printf("%s: delegating to %s would cause a loop\n",
       ifp->if_xname, delegated_ifp->if_xname);
   ifnet_lock_done(ifp);
   goto done;
  }
  delegate_check_ifp = delegate_check_ifp->if_delegated.ifp;
 }
 bzero(&ifp->if_delegated, sizeof (ifp->if_delegated));
 if (delegated_ifp != ((void*)0) && ifp != delegated_ifp) {
  ifp->if_delegated.ifp = delegated_ifp;
  ifnet_reference(delegated_ifp);
  ifp->if_delegated.type = delegated_ifp->if_type;
  ifp->if_delegated.family = delegated_ifp->if_family;
  ifp->if_delegated.subfamily = delegated_ifp->if_subfamily;
  ifp->if_delegated.expensive =
      delegated_ifp->if_eflags & IFEF_EXPENSIVE ? 1 : 0;




  ifp->if_eflags &= ~(IFEF_ECN_ENABLE|IFEF_ECN_DISABLE);
  ifp->if_eflags |= (delegated_ifp->if_eflags &
      (IFEF_ECN_ENABLE|IFEF_ECN_DISABLE));

  printf("%s: is now delegating %s (type 0x%x, family %u, "
      "sub-family %u)\n", ifp->if_xname, delegated_ifp->if_xname,
      delegated_ifp->if_type, delegated_ifp->if_family,
      delegated_ifp->if_subfamily);
 }

 ifnet_lock_done(ifp);

 if (odifp != ((void*)0)) {
  if (odifp != delegated_ifp) {
   printf("%s: is no longer delegating %s\n",
       ifp->if_xname, odifp->if_xname);
  }
  ifnet_release(odifp);
 }


 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_IFDELEGATE_CHANGED, ((void*)0), 0);

done:

 ifnet_decr_iorefcnt(ifp);

 return (0);
}
