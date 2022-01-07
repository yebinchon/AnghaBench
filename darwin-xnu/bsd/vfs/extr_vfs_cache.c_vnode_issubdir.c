
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct componentname {int cn_flags; char* cn_pnbuf; int cn_pnlen; char* cn_nameptr; int cn_namelen; int cn_context; int cn_nameiop; } ;
typedef int dotdotbuf ;
typedef int cn ;
typedef int boolean_t ;
struct TYPE_16__ {int v_flag; struct TYPE_16__* v_parent; } ;


 int ENOENT ;
 void* FALSE ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int LOOKUP ;
 int MAX_ERROR_RETRY ;
 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;
 TYPE_1__* NULLVP ;
 int TRUE ;
 int VISHARDLINK ;
 int VNODE_UPDATE_PARENT ;
 int VNOP_LOOKUP (TYPE_1__*,TYPE_1__**,struct componentname*,int ) ;
 int bzero (struct componentname*,int) ;
 int cache_check_vnode_issubdir (TYPE_1__*,TYPE_1__*,int*,TYPE_1__**) ;
 TYPE_1__* rootvnode ;
 int vnode_getwithvid (TYPE_1__*,int ) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_update_identity (TYPE_1__*,TYPE_1__*,int *,int ,int ,int ) ;
 int vnode_vid (TYPE_1__*) ;

int
vnode_issubdir(vnode_t vp, vnode_t dvp, int *is_subdir, vfs_context_t ctx)
{
 vnode_t start_vp, tvp;
 vnode_t vp_with_iocount;
 int error = 0;
 char dotdotbuf[] = "..";
 int error_retry_count = 0;


 *is_subdir = FALSE;
 tvp = start_vp = vp;




 vp_with_iocount = NULLVP;

 while (1) {
  boolean_t defer;
  vnode_t pvp;
  uint32_t vid;
  struct componentname cn;
  boolean_t is_subdir_locked = FALSE;

  if (tvp == dvp) {
   *is_subdir = TRUE;
   break;
  } else if (tvp == rootvnode) {

   break;
  }

  NAME_CACHE_LOCK_SHARED();

  defer = cache_check_vnode_issubdir(tvp, dvp, &is_subdir_locked,
      &tvp);

  if (defer && tvp)
   vid = vnode_vid(tvp);

  NAME_CACHE_UNLOCK();

  if (!defer) {
   *is_subdir = is_subdir_locked;
   break;
  }

  if (!tvp) {
   if (error_retry_count++ < MAX_ERROR_RETRY) {
    tvp = vp;
    continue;
   }
   error = ENOENT;
   break;
  }

  if (tvp != start_vp) {
   if (vp_with_iocount) {
    vnode_put(vp_with_iocount);
    vp_with_iocount = NULLVP;
   }

   error = vnode_getwithvid(tvp, vid);
   if (error) {
    if (error_retry_count++ < MAX_ERROR_RETRY) {
     tvp = vp;
     error = 0;
     continue;
    }
    break;
   }

   vp_with_iocount = tvp;
  }

  bzero(&cn, sizeof(cn));
  cn.cn_nameiop = LOOKUP;
  cn.cn_flags = ISLASTCN | ISDOTDOT;
  cn.cn_context = ctx;
  cn.cn_pnbuf = &dotdotbuf[0];
  cn.cn_pnlen = sizeof(dotdotbuf);
  cn.cn_nameptr = cn.cn_pnbuf;
  cn.cn_namelen = 2;

  pvp = NULLVP;
  if ((error = VNOP_LOOKUP(tvp, &pvp, &cn, ctx)))
   break;

  if (!(tvp->v_flag & VISHARDLINK) && tvp->v_parent != pvp) {
   (void)vnode_update_identity(tvp, pvp, ((void*)0), 0, 0,
       VNODE_UPDATE_PARENT);
  }

  if (vp_with_iocount)
   vnode_put(vp_with_iocount);

  vp_with_iocount = tvp = pvp;
 }

 if (vp_with_iocount)
  vnode_put(vp_with_iocount);

 return (error);
}
