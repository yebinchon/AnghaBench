
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct sadb_x_ipsecif {scalar_t__* sadb_x_ipsecif_outgoing_if; } ;
struct sadb_msghdr {scalar_t__* ext; } ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {int if_index; } ;


 int ifnet_find_by_name (scalar_t__*,TYPE_1__**) ;

__attribute__((used)) static u_int
key_get_outgoing_ifindex_from_message (const struct sadb_msghdr *mhp, int message_type)
{
 struct sadb_x_ipsecif *ipsecifopts = ((void*)0);
 ifnet_t outgoing_if = ((void*)0);

 ipsecifopts = (struct sadb_x_ipsecif *)(void *)mhp->ext[message_type];
 if (ipsecifopts != ((void*)0)) {
  if (ipsecifopts->sadb_x_ipsecif_outgoing_if[0]) {
   ifnet_find_by_name(ipsecifopts->sadb_x_ipsecif_outgoing_if, &outgoing_if);
        }
    }

 return outgoing_if ? outgoing_if->if_index : 0;
}
