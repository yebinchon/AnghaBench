
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int getbufzone (int) ;
 int recycle_buf_failed ;
 void* recycle_buf_from_pool (int) ;
 scalar_t__ set_vm_privilege (scalar_t__) ;
 void* zalloc (int ) ;
 void* zalloc_nopagewait (int ) ;
 int zalloc_nopagewait_failed ;

__attribute__((used)) static void *
grab_memory_for_meta_buf(int nsize)
{
 zone_t z;
 void *ptr;
 boolean_t was_vmpriv;

 z = getbufzone(nsize);
 was_vmpriv = set_vm_privilege(FALSE);

 ptr = zalloc_nopagewait(z);

 if (was_vmpriv == TRUE)
  set_vm_privilege(TRUE);

 if (ptr == ((void*)0)) {

  zalloc_nopagewait_failed++;

  ptr = recycle_buf_from_pool(nsize);

  if (ptr == ((void*)0)) {

   recycle_buf_failed++;

   if (was_vmpriv == FALSE)
    set_vm_privilege(TRUE);

   ptr = zalloc(z);

   if (was_vmpriv == FALSE)
    set_vm_privilege(FALSE);
  }
 }
 return (ptr);
}
