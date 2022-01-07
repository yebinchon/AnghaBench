
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct componentname {scalar_t__ cn_hash; int cn_namelen; int cn_nameptr; } ;


 int FALSE ;
 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 char* add_name_internal (int ,int ,scalar_t__,int ,int ) ;
 int cache_enter_locked (struct vnode*,struct vnode*,struct componentname*,char const*) ;
 scalar_t__ hash_string (int ,int ) ;

void
cache_enter(struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
 const char *strname;

        if (cnp->cn_hash == 0)
         cnp->cn_hash = hash_string(cnp->cn_nameptr, cnp->cn_namelen);





 strname = add_name_internal(cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, FALSE, 0);

 NAME_CACHE_LOCK();

 cache_enter_locked(dvp, vp, cnp, strname);

 NAME_CACHE_UNLOCK();
}
