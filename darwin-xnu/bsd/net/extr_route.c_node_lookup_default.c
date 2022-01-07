
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {struct radix_node* (* rnh_lookup ) (int *,int *,struct radix_node_head*) ;} ;
struct radix_node {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int VERIFY (int) ;
 struct radix_node_head** rt_tables ;
 int sin6_def ;
 int sin_def ;
 struct radix_node* stub1 (int *,int *,struct radix_node_head*) ;
 struct radix_node* stub2 (int *,int *,struct radix_node_head*) ;

__attribute__((used)) static struct radix_node *
node_lookup_default(int af)
{
 struct radix_node_head *rnh;

 VERIFY(af == AF_INET || af == AF_INET6);
 rnh = rt_tables[af];

 return (af == AF_INET ? rnh->rnh_lookup(&sin_def, ((void*)0), rnh) :
     rnh->rnh_lookup(&sin6_def, ((void*)0), rnh));
}
