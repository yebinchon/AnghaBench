
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_acl_t ;


 int FREE (int ,int ) ;
 int M_KAUTH ;

void
kauth_acl_free(kauth_acl_t aclp)
{
 FREE(aclp, M_KAUTH);
}
