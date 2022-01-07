
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct namecache {int dummy; } ;
typedef int * kauth_cred_t ;
struct TYPE_5__ {int v_nc_generation; } ;
struct TYPE_4__ {scalar_t__ v_cred; scalar_t__ v_authorized_actions; int v_ncchildren; int v_nclinks; TYPE_3__* v_parent; } ;


 scalar_t__ IS_VALID_CRED (int *) ;
 struct namecache* LIST_FIRST (int *) ;
 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 scalar_t__ NOCRED ;
 TYPE_3__* NULLVP ;
 struct namecache* TAILQ_FIRST (int *) ;
 int cache_delete (struct namecache*,int) ;
 int kauth_cred_unref (int **) ;

void
cache_purge(vnode_t vp)
{
        struct namecache *ncp;
 kauth_cred_t tcred = ((void*)0);

 if ((LIST_FIRST(&vp->v_nclinks) == ((void*)0)) &&
   (TAILQ_FIRST(&vp->v_ncchildren) == ((void*)0)) &&
   (vp->v_cred == NOCRED) &&
   (vp->v_parent == NULLVP))
         return;

 NAME_CACHE_LOCK();

 if (vp->v_parent)
         vp->v_parent->v_nc_generation++;

 while ( (ncp = LIST_FIRST(&vp->v_nclinks)) )
         cache_delete(ncp, 1);

 while ( (ncp = TAILQ_FIRST(&vp->v_ncchildren)) )
         cache_delete(ncp, 1);




 tcred = vp->v_cred;
 vp->v_cred = NOCRED;
 vp->v_authorized_actions = 0;

 NAME_CACHE_UNLOCK();

 if (IS_VALID_CRED(tcred))
         kauth_cred_unref(&tcred);
}
