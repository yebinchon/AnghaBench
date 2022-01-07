
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
struct if_agentidsreq64 {int ifar_uuids; int ifar_count; } ;
struct if_agentidsreq32 {int ifar_uuids; int ifar_count; } ;
struct if_agentidreq {int ifar_uuid; } ;
typedef struct if_agentidsreq64* caddr_t ;


 int EOPNOTSUPP ;




 int VERIFY (int ) ;
 int bcopy (struct if_agentidsreq64*,struct if_agentidsreq64*,int) ;
 int if_add_netagent_locked (struct ifnet*,int ) ;
 int if_delete_netagent_locked (struct ifnet*,int ) ;
 int ifioctl_getnetagents (struct ifnet*,int *,int ) ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int proc_suser (struct proc*) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_netagent(struct ifnet *ifp, u_long cmd, caddr_t data, struct proc *p)
{
 struct if_agentidreq *ifar = (struct if_agentidreq *)(void *)data;
 union {
  struct if_agentidsreq32 s32;
  struct if_agentidsreq64 s64;
 } u;
 int error = 0;

 VERIFY(ifp != ((void*)0));


 if (!ifnet_is_attached(ifp, 1)) {
  return (EOPNOTSUPP);
 }

 if (cmd == 131 ||
  cmd == 130) {
  ifnet_lock_exclusive(ifp);
 } else {
  ifnet_lock_shared(ifp);
 }

 switch (cmd) {
  case 131: {

   if ((error = proc_suser(p)) != 0) {
    break;
   }
   error = if_add_netagent_locked(ifp, ifar->ifar_uuid);
   break;
  }
  case 130: {

   if ((error = proc_suser(p)) != 0) {
    break;
   }
   error = if_delete_netagent_locked(ifp, ifar->ifar_uuid);
   break;
  }
  case 129: {
   bcopy(data, &u.s32, sizeof(u.s32));
   error = ifioctl_getnetagents(ifp, &u.s32.ifar_count,
       u.s32.ifar_uuids);
   if (error == 0) {
    bcopy(&u.s32, data, sizeof(u.s32));
   }
   break;
  }
  case 128: {
   bcopy(data, &u.s64, sizeof(u.s64));
   error = ifioctl_getnetagents(ifp, &u.s64.ifar_count,
       u.s64.ifar_uuids);
   if (error == 0) {
    bcopy(&u.s64, data, sizeof(u.s64));
   }
   break;
  }
  default:
   VERIFY(0);

 }

 ifnet_lock_done(ifp);
 ifnet_decr_iorefcnt(ifp);

 return (error);
}
