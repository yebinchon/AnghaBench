
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr64_t ;


 scalar_t__ mcl_to_paddr (void*) ;

addr64_t
mbuf_data_to_physical(void *ptr)
{
 return ((addr64_t)mcl_to_paddr(ptr));
}
