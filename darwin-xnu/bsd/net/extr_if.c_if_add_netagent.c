
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct ifnet {int dummy; } ;


 int VERIFY (int ) ;
 int if_add_netagent_locked (struct ifnet*,int ) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;

int
if_add_netagent(struct ifnet *ifp, uuid_t new_agent_uuid)
{
 VERIFY(ifp != ((void*)0));

 ifnet_lock_exclusive(ifp);

 int error = if_add_netagent_locked(ifp, new_agent_uuid);

 ifnet_lock_done(ifp);

 return (error);
}
