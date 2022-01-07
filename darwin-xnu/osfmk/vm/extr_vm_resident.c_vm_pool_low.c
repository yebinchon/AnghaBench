
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vm_page_free_count ;
 scalar_t__ vm_page_free_reserved ;

int
vm_pool_low(void)
{

 return( vm_page_free_count <= vm_page_free_reserved );
}
