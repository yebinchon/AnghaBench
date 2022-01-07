
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int kfree (char*,int ) ;

void
mig_user_deallocate(
 char *data,
 vm_size_t size)
{
 kfree(data, size);
}
