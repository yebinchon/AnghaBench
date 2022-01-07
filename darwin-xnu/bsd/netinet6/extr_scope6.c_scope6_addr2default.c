
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int * s6id_list; } ;


 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 int in6_addrscope (struct in6_addr*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int scope6_lock ;
 TYPE_1__ sid_default ;

u_int32_t
scope6_addr2default(struct in6_addr *addr)
{
 u_int32_t id = 0;
 int index = in6_addrscope(addr);





 if (IN6_IS_ADDR_LOOPBACK(addr))
  return (0);

 lck_mtx_lock(&scope6_lock);
 id = sid_default.s6id_list[index];
 lck_mtx_unlock(&scope6_lock);

 return (id);
}
