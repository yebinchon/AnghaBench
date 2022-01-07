
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 void kfree (void*,int ) ;

void
mac_kfree(void * data, vm_size_t size)
{

 return kfree(data, size);
}
