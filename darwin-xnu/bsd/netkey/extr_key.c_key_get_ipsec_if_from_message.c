
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_x_ipsecif {scalar_t__* sadb_x_ipsecif_ipsec_if; } ;
struct sadb_msghdr {scalar_t__* ext; } ;
typedef int * ifnet_t ;


 int ifnet_find_by_name (scalar_t__*,int **) ;

__attribute__((used)) static ifnet_t
key_get_ipsec_if_from_message (const struct sadb_msghdr *mhp, int message_type)
{
 struct sadb_x_ipsecif *ipsecifopts = ((void*)0);
 ifnet_t ipsec_if = ((void*)0);

 ipsecifopts = (struct sadb_x_ipsecif *)(void *)mhp->ext[message_type];
 if (ipsecifopts != ((void*)0)) {
  if (ipsecifopts->sadb_x_ipsecif_ipsec_if[0]) {
   ifnet_find_by_name(ipsecifopts->sadb_x_ipsecif_ipsec_if, &ipsec_if);
  }
 }

 return ipsec_if;
}
