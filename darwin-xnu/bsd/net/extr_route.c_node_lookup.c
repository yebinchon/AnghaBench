
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct radix_node_head {struct radix_node* (* rnh_lookup_args ) (struct sockaddr*,struct sockaddr*,struct radix_node_head*,int *,void*) ;} ;
struct radix_node {int rn_flags; } ;
struct matchleaf_arg {unsigned int member_0; } ;
typedef int rn_matchf_t ;


 int AF_INET ;
 int AF_INET6 ;
 unsigned int IFSCOPE_NONE ;
 int RNF_ROOT ;
 struct sockaddr* ma_copy (int,struct sockaddr*,struct sockaddr_storage*,unsigned int) ;
 int * rn_match_ifscope ;
 struct radix_node_head** rt_tables ;
 struct sockaddr* sa_copy (struct sockaddr*,struct sockaddr_storage*,unsigned int*) ;
 struct radix_node* stub1 (struct sockaddr*,struct sockaddr*,struct radix_node_head*,int *,void*) ;

__attribute__((used)) static struct radix_node *
node_lookup(struct sockaddr *dst, struct sockaddr *netmask,
    unsigned int ifscope)
{
 struct radix_node_head *rnh;
 struct radix_node *rn;
 struct sockaddr_storage ss, mask;
 int af = dst->sa_family;
 struct matchleaf_arg ma = { ifscope };
 rn_matchf_t *f = rn_match_ifscope;
 void *w = &ma;

 if (af != AF_INET && af != AF_INET6)
  return (((void*)0));

 rnh = rt_tables[af];





 dst = sa_copy(dst, &ss, (ifscope == IFSCOPE_NONE) ? ((void*)0) : &ifscope);


 if (netmask != ((void*)0))
  netmask = ma_copy(af, netmask, &mask, ifscope);

 if (ifscope == IFSCOPE_NONE)
  f = w = ((void*)0);

 rn = rnh->rnh_lookup_args(dst, netmask, rnh, f, w);
 if (rn != ((void*)0) && (rn->rn_flags & RNF_ROOT))
  rn = ((void*)0);

 return (rn);
}
