
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubc_info {scalar_t__ ui_control; int ui_ucred; } ;


 scalar_t__ IS_VALID_CRED (int ) ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 int cluster_release (struct ubc_info*) ;
 int kauth_cred_unref (int *) ;
 int memory_object_control_deallocate (scalar_t__) ;
 int ubc_cs_free (struct ubc_info*) ;
 int ubc_info_zone ;
 int zfree (int ,struct ubc_info*) ;

__attribute__((used)) static void
ubc_info_free(struct ubc_info *uip)
{
 if (IS_VALID_CRED(uip->ui_ucred)) {
  kauth_cred_unref(&uip->ui_ucred);
 }

 if (uip->ui_control != MEMORY_OBJECT_CONTROL_NULL)
  memory_object_control_deallocate(uip->ui_control);

 cluster_release(uip);
 ubc_cs_free(uip);

 zfree(ubc_info_zone, uip);
 return;
}
