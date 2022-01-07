
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcdata_descriptor {int dummy; } ;
typedef int kern_return_t ;
typedef int kcdata_descriptor_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int kfree (int ,int) ;

kern_return_t kcdata_memory_destroy(kcdata_descriptor_t data)
{
 if (!data) {
  return KERN_INVALID_ARGUMENT;
 }





 kfree(data, sizeof(struct kcdata_descriptor));
 return KERN_SUCCESS;
}
