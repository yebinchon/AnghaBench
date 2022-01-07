
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_nc_generation; } ;
struct componentname {scalar_t__ cn_hash; int cn_namelen; int cn_nameptr; } ;


 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 int cache_enter_locked (struct vnode*,struct vnode*,struct componentname*,int *) ;
 scalar_t__ hash_string (int ,int ) ;

void
cache_enter_with_gen(struct vnode *dvp, struct vnode *vp, struct componentname *cnp, int gen)
{

        if (cnp->cn_hash == 0)
         cnp->cn_hash = hash_string(cnp->cn_nameptr, cnp->cn_namelen);

 NAME_CACHE_LOCK();

 if (dvp->v_nc_generation == gen)
         (void)cache_enter_locked(dvp, vp, cnp, ((void*)0));

 NAME_CACHE_UNLOCK();
}
