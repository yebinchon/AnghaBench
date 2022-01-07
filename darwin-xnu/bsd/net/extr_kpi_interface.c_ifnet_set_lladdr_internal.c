
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_dl {size_t sdl_alen; int sdl_type; } ;
struct ifaddr {scalar_t__ ifa_addr; } ;
typedef TYPE_1__* ifnet_t ;
typedef scalar_t__ errno_t ;
struct TYPE_7__ {size_t if_addrlen; int if_index; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ENXIO ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int INTF_EVENT_CODE_LLADDR_UPDATE ;
 int KEV_DL_LINK_ADDRESS_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int LLADDR (struct sockaddr_dl*) ;
 int bcopy (void const*,int ,size_t) ;
 int bzero (int ,size_t) ;
 int dlil_post_msg (TYPE_1__*,int ,int ,int *,int ) ;
 struct ifaddr** ifnet_addrs ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;
 int intf_event_enqueue_nwk_wq_entry (TYPE_1__*,int *,int ) ;

__attribute__((used)) static errno_t
ifnet_set_lladdr_internal(ifnet_t interface, const void *lladdr,
    size_t lladdr_len, u_char new_type, int apply_type)
{
 struct ifaddr *ifa;
 errno_t error = 0;

 if (interface == ((void*)0))
  return (EINVAL);

 ifnet_head_lock_shared();
 ifnet_lock_exclusive(interface);
 if (lladdr_len != 0 &&
     (lladdr_len != interface->if_addrlen || lladdr == 0)) {
  ifnet_lock_done(interface);
  ifnet_head_done();
  return (EINVAL);
 }
 ifa = ifnet_addrs[interface->if_index - 1];
 if (ifa != ((void*)0)) {
  struct sockaddr_dl *sdl;

  IFA_LOCK_SPIN(ifa);
  sdl = (struct sockaddr_dl *)(void *)ifa->ifa_addr;
  if (lladdr_len != 0) {
   bcopy(lladdr, LLADDR(sdl), lladdr_len);
  } else {
   bzero(LLADDR(sdl), interface->if_addrlen);
  }
  sdl->sdl_alen = lladdr_len;

  if (apply_type) {
   sdl->sdl_type = new_type;
  }
  IFA_UNLOCK(ifa);
 } else {
  error = ENXIO;
 }
 ifnet_lock_done(interface);
 ifnet_head_done();


 if (error == 0) {
  intf_event_enqueue_nwk_wq_entry(interface, ((void*)0),
      INTF_EVENT_CODE_LLADDR_UPDATE);
  dlil_post_msg(interface, KEV_DL_SUBCLASS,
      KEV_DL_LINK_ADDRESS_CHANGED, ((void*)0), 0);
 }

 return (error);
}
