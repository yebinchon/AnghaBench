
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int vm_size_t ;


 int zinit (int ,int ,int ,char const*) ;

zone_t
mac_zinit(vm_size_t size, vm_size_t maxmem, vm_size_t alloc, const char *name)
{

 return zinit(size, maxmem, alloc, name);
}
