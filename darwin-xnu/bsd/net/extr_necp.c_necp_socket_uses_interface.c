
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_3__ {int sin_addr; } ;
union necp_sockaddr_union {TYPE_2__ sin6; TYPE_1__ sin; int sa; } ;
typedef size_t u_int32_t ;
struct inpcb {int inp_vflag; int in6p_laddr; int inp_laddr; } ;
typedef int * ifnet_t ;
typedef int * ifaddr_t ;
typedef scalar_t__ errno_t ;
typedef int address_storage ;


 int AF_INET ;
 int AF_INET6 ;
 int FALSE ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int ,int ) ;
 int TRUE ;
 scalar_t__ ifaddr_address (int *,int *,int) ;
 int ** ifindex2ifnet ;
 int ifnet_free_address_list (int **) ;
 scalar_t__ ifnet_get_address_list_family (int *,int ***,int) ;
 int ifnet_name (int *) ;
 int ifnet_unit (int *) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static bool
necp_socket_uses_interface(struct inpcb *inp, u_int32_t interface_index)
{
 bool found_match = FALSE;
 errno_t result = 0;
 ifaddr_t *addresses = ((void*)0);
 union necp_sockaddr_union address_storage;
 int i;
 int family = AF_INET;
 ifnet_t interface = ifindex2ifnet[interface_index];

 if (inp == ((void*)0) || interface == ((void*)0)) {
  return (FALSE);
 }

 if (inp->inp_vflag & INP_IPV4) {
  family = AF_INET;
 } else if (inp->inp_vflag & INP_IPV6) {
  family = AF_INET6;
 }

 result = ifnet_get_address_list_family(interface, &addresses, family);
 if (result != 0) {
  NECPLOG(LOG_ERR, "Failed to get address list for %s%d", ifnet_name(interface), ifnet_unit(interface));
  return (FALSE);
 }

 for (i = 0; addresses[i] != ((void*)0); i++) {
  if (ifaddr_address(addresses[i], &address_storage.sa, sizeof(address_storage)) == 0) {
   if (family == AF_INET) {
    if (memcmp(&address_storage.sin.sin_addr, &inp->inp_laddr, sizeof(inp->inp_laddr)) == 0) {
     found_match = TRUE;
     goto done;
    }
   } else if (family == AF_INET6) {
    if (memcmp(&address_storage.sin6.sin6_addr, &inp->in6p_laddr, sizeof(inp->in6p_laddr)) == 0) {
     found_match = TRUE;
     goto done;
    }
   }
  }
 }

done:
 ifnet_free_address_list(addresses);
 addresses = ((void*)0);
 return (found_match);
}
