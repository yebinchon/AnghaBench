
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsvctype_dscp_map {size_t netsvctype; int dscp; } ;
struct net_qos_dscp_map {int * netsvctype_to_dscp; } ;
typedef int errno_t ;


 int EINVAL ;
 size_t MIN (int ,size_t) ;
 size_t _MAX_DSCP ;
 int _NET_SERVICE_TYPE_COUNT ;
 struct net_qos_dscp_map default_net_qos_dscp_map ;

__attribute__((used)) static errno_t
get_netsvctype_dscp_map(size_t *out_count,
    struct netsvctype_dscp_map *netsvctype_dscp_map)
{
 size_t i;
 struct net_qos_dscp_map *net_qos_dscp_map = ((void*)0);




 if (out_count == ((void*)0) || netsvctype_dscp_map == ((void*)0))
  return (EINVAL);
 if (*out_count > _MAX_DSCP)
  return (EINVAL);

 net_qos_dscp_map = &default_net_qos_dscp_map;

 for (i = 0; i < MIN(_NET_SERVICE_TYPE_COUNT, *out_count); i++) {
  netsvctype_dscp_map[i].netsvctype = i;
  netsvctype_dscp_map[i].dscp = net_qos_dscp_map->netsvctype_to_dscp[i];

 }
 *out_count = i;

 return (0);
}
