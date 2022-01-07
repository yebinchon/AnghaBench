
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct namecache* tqh_first; } ;
struct nchashhead {struct namecache* lh_first; } ;
struct vnode {char* v_name; TYPE_2__ v_ncchildren; struct nchashhead v_nclinks; } ;
struct TYPE_9__ {scalar_t__ le_prev; struct namecache* le_next; } ;
struct namecache {unsigned int nc_hashval; char const* nc_name; TYPE_1__ nc_hash; struct vnode* nc_dvp; struct vnode* nc_vp; } ;
struct componentname {unsigned int cn_hash; char const* cn_nameptr; unsigned int cn_namelen; } ;
struct TYPE_11__ {int nc_negentry; int nc_link; } ;


 int FALSE ;
 scalar_t__ LIST_FIRST (struct nchashhead*) ;
 int LIST_INSERT_HEAD (struct nchashhead*,struct namecache*,int ) ;
 int M_CACHE ;
 int M_WAITOK ;
 struct nchashhead* NCHHASH (struct vnode*,unsigned int) ;
 int NCHSTAT (int ) ;
 struct vnode* NULLVP ;
 struct namecache* TAILQ_FIRST (TYPE_2__*) ;
 int TAILQ_INSERT_HEAD (TYPE_2__*,struct namecache*,int ) ;
 int TAILQ_INSERT_TAIL (TYPE_2__*,struct namecache*,int ) ;
 int TAILQ_REMOVE (TYPE_2__*,struct namecache*,int ) ;
 scalar_t__ _MALLOC_ZONE (int,int ,int ) ;
 void* add_name_internal (char const*,unsigned int,unsigned int,int ,int ) ;
 int cache_delete (struct namecache*,int) ;
 scalar_t__ desiredNegNodes ;
 scalar_t__ desiredNodes ;
 unsigned int hash_string (char const*,unsigned int) ;
 int nc_child ;
 scalar_t__ nc_disabled ;
 int nc_entry ;
 int nc_hash ;
 TYPE_4__ nc_un ;
 TYPE_2__ nchead ;
 int ncs_enters ;
 scalar_t__ ncs_negtotal ;
 int ncs_stolen ;
 TYPE_2__ neghead ;
 scalar_t__ numcache ;
 int panic (char*) ;
 unsigned int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,unsigned int) ;
 int vfs_removename (char const*) ;

__attribute__((used)) static void
cache_enter_locked(struct vnode *dvp, struct vnode *vp, struct componentname *cnp, const char *strname)
{
        struct namecache *ncp, *negp;
 struct nchashhead *ncpp;

 if (nc_disabled)
  return;




 if ((vp != NULLVP) && (LIST_FIRST(&vp->v_nclinks))) {




  if (strname != ((void*)0))
   vfs_removename(strname);
  return;
 }





 if (numcache < desiredNodes &&
     ((ncp = nchead.tqh_first) == ((void*)0) ||
       ncp->nc_hash.le_prev != 0)) {



  ncp = (struct namecache *)_MALLOC_ZONE(sizeof(*ncp), M_CACHE, M_WAITOK);
  numcache++;
 } else {



         ncp = TAILQ_FIRST(&nchead);
  TAILQ_REMOVE(&nchead, ncp, nc_entry);

  if (ncp->nc_hash.le_prev != 0) {




   NCHSTAT(ncs_stolen);
   cache_delete(ncp, 0);
  }
 }
 NCHSTAT(ncs_enters);




 ncp->nc_vp = vp;
 ncp->nc_dvp = dvp;
 ncp->nc_hashval = cnp->cn_hash;

 if (strname == ((void*)0))
  ncp->nc_name = add_name_internal(cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, FALSE, 0);
 else
  ncp->nc_name = strname;
 const char *vn_name = vp ? vp->v_name : ((void*)0);
 unsigned int len = vn_name ? strlen(vn_name) : 0;
 if (vn_name && ncp && ncp->nc_name && strncmp(ncp->nc_name, vn_name, len) != 0) {
  unsigned int hash = hash_string(vn_name, len);

  vfs_removename(ncp->nc_name);
  ncp->nc_name = add_name_internal(vn_name, len, hash, FALSE, 0);
  ncp->nc_hashval = hash;
 }





 TAILQ_INSERT_TAIL(&nchead, ncp, nc_entry);

 ncpp = NCHHASH(dvp, cnp->cn_hash);
 LIST_INSERT_HEAD(ncpp, ncp, nc_hash);

 if (vp) {




  LIST_INSERT_HEAD(&vp->v_nclinks, ncp, nc_un.nc_link);
 } else {




         TAILQ_INSERT_TAIL(&neghead, ncp, nc_un.nc_negentry);

  ncs_negtotal++;

  if (ncs_negtotal > desiredNegNodes) {





          negp = TAILQ_FIRST(&neghead);
   cache_delete(negp, 1);
  }
 }




 if (vp)
  TAILQ_INSERT_TAIL(&dvp->v_ncchildren, ncp, nc_child);
 else
  TAILQ_INSERT_HEAD(&dvp->v_ncchildren, ncp, nc_child);
}
