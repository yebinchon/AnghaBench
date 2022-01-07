
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_msource {int im6s_addr; } ;
struct in6_addr {int dummy; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static __inline int
ip6_msource_cmp(const struct ip6_msource *a, const struct ip6_msource *b)
{
 return (memcmp(&a->im6s_addr, &b->im6s_addr, sizeof(struct in6_addr)));
}
