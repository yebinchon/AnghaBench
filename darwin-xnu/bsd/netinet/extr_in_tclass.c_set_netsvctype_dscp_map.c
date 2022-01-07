
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsvctype_dscp_map {int netsvctype; size_t dscp; } ;
struct net_qos_dscp_map {size_t* netsvctype_to_dscp; size_t* sotc_to_dscp; } ;
typedef int errno_t ;


 int ASSERT (int ) ;
 int EINVAL ;
 int IS_VALID_NET_SERVICE_TYPE (int) ;
 size_t SIZE_T_MAX ;
 size_t SOTCIX_BK ;
 size_t SOTCIX_BK_SYS ;
 size_t SOTCIX_CTL ;
 size_t _DSCP_DF ;
 size_t _MAX_DSCP ;
 int _NET_SERVICE_TYPE_COUNT ;
 struct net_qos_dscp_map default_net_qos_dscp_map ;
 int * sotc_by_netservicetype ;
 size_t sotc_index (int ) ;

__attribute__((used)) static errno_t
set_netsvctype_dscp_map(size_t in_count,
    const struct netsvctype_dscp_map *netsvctype_dscp_map)
{
 size_t i;
 struct net_qos_dscp_map *net_qos_dscp_map = ((void*)0);
 int netsvctype;




 if (in_count > _MAX_DSCP || netsvctype_dscp_map == ((void*)0))
  return (EINVAL);




 for (i = 0; i < in_count; i++) {
  if (!IS_VALID_NET_SERVICE_TYPE(netsvctype_dscp_map[i].netsvctype))
   return (EINVAL);
  if (netsvctype_dscp_map[i].dscp > _MAX_DSCP)
   return (EINVAL);
 }

 net_qos_dscp_map = &default_net_qos_dscp_map;

 for (i = 0; i < in_count; i++) {
  netsvctype = netsvctype_dscp_map[i].netsvctype;

  net_qos_dscp_map->netsvctype_to_dscp[netsvctype] =
      netsvctype_dscp_map[i].dscp;
 }
 for (netsvctype = 0; netsvctype < _NET_SERVICE_TYPE_COUNT; netsvctype++) {
  switch (netsvctype) {
   case 135:
   case 134:
   case 129:
   case 128:
   case 131:
   case 136:
   case 133:
   case 132: {
    size_t sotcix;

    sotcix = sotc_index(sotc_by_netservicetype[netsvctype]);
    if (sotcix != SIZE_T_MAX) {
     net_qos_dscp_map->sotc_to_dscp[sotcix] =
         netsvctype_dscp_map[netsvctype].dscp;
    }
    break;
   }
   case 130:

    break;
   default:

    ASSERT(0);
  }
 }

 net_qos_dscp_map->sotc_to_dscp[SOTCIX_CTL] = _DSCP_DF;


 net_qos_dscp_map->sotc_to_dscp[SOTCIX_BK] =
    net_qos_dscp_map->sotc_to_dscp[SOTCIX_BK_SYS];

 return (0);
}
