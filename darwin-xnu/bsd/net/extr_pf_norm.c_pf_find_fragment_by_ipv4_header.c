
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int dummy; } ;
struct pf_frag_tree {int dummy; } ;
struct ip {int dummy; } ;


 struct pf_fragment* pf_find_fragment_by_key (struct pf_fragment*,struct pf_frag_tree*) ;
 int pf_ip2key (struct pf_fragment*,struct ip*) ;

__attribute__((used)) static __inline struct pf_fragment *
pf_find_fragment_by_ipv4_header(struct ip *ip, struct pf_frag_tree *tree)
{
 struct pf_fragment key;
 pf_ip2key(&key, ip);
 return pf_find_fragment_by_key(&key, tree);
}
