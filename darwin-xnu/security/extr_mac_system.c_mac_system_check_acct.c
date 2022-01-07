
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct vnode*,int *) ;
 int mac_system_enforce ;
 int system_check_acct ;

int
mac_system_check_acct(kauth_cred_t cred, struct vnode *vp)
{
 int error;







 MAC_CHECK(system_check_acct, cred, vp,
     vp != ((void*)0) ? vp->v_label : ((void*)0));

 return (error);
}
