
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct componentname {scalar_t__ cn_hash; int cn_namelen; int cn_nameptr; } ;


 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 int TRUE ;
 char* add_name_internal (int ,int ,scalar_t__,int ,int ) ;
 int cache_enter_locked (int ,int ,struct componentname*,char const*) ;
 scalar_t__ hash_string (int ,int ) ;

const char *
cache_enter_create(vnode_t dvp, vnode_t vp, struct componentname *cnp)
{
 const char *strname;

        if (cnp->cn_hash == 0)
         cnp->cn_hash = hash_string(cnp->cn_nameptr, cnp->cn_namelen);






 strname = add_name_internal(cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, TRUE, 0);

 NAME_CACHE_LOCK();

 cache_enter_locked(dvp, vp, cnp, strname);

 NAME_CACHE_UNLOCK();

 return (strname);
}
