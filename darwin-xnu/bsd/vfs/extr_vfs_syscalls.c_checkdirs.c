
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct cdirargs {TYPE_1__* newdp; TYPE_1__* olddp; } ;
struct TYPE_8__ {int v_usecount; int v_mountedhere; } ;


 int PROC_ALLPROCLIST ;
 int PROC_NOWAITTRANS ;
 int VFS_ROOT (int ,TYPE_1__**,int ) ;
 int checkdirs_callback ;
 int panic (char*,int) ;
 int proc_iterate (int,int ,void*,int *,int *) ;
 TYPE_1__* rootvnode ;
 int vnode_put (TYPE_1__*) ;
 int vnode_ref (TYPE_1__*) ;
 int vnode_rele (TYPE_1__*) ;

__attribute__((used)) static int
checkdirs(vnode_t olddp, vfs_context_t ctx)
{
 vnode_t newdp;
 vnode_t tvp;
 int err;
 struct cdirargs cdr;

 if (olddp->v_usecount == 1)
  return(0);
 err = VFS_ROOT(olddp->v_mountedhere, &newdp, ctx);

 if (err != 0) {



  return(err);
 }

 cdr.olddp = olddp;
 cdr.newdp = newdp;

 proc_iterate(PROC_ALLPROCLIST | PROC_NOWAITTRANS, checkdirs_callback, (void *)&cdr, ((void*)0), ((void*)0));

 if (rootvnode == olddp) {
  vnode_ref(newdp);
  tvp = rootvnode;
  rootvnode = newdp;
  vnode_rele(tvp);
 }

 vnode_put(newdp);
 return(0);
}
