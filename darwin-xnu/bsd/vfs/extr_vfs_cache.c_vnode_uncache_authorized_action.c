
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef scalar_t__ kauth_cred_t ;
typedef int kauth_action_t ;
struct TYPE_3__ {scalar_t__ v_cred; int v_authorized_actions; } ;


 scalar_t__ IS_VALID_CRED (scalar_t__) ;
 int KAUTH_INVALIDATE_CACHED_RIGHTS ;
 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 scalar_t__ NOCRED ;
 int kauth_cred_unref (scalar_t__*) ;

void vnode_uncache_authorized_action(vnode_t vp, kauth_action_t action)
{
        kauth_cred_t tcred = NOCRED;

 NAME_CACHE_LOCK();

 vp->v_authorized_actions &= ~action;

 if (action == KAUTH_INVALIDATE_CACHED_RIGHTS &&
     IS_VALID_CRED(vp->v_cred)) {



         tcred = vp->v_cred;
  vp->v_cred = NOCRED;
 }
 NAME_CACHE_UNLOCK();

 if (tcred != NOCRED)
  kauth_cred_unref(&tcred);
}
