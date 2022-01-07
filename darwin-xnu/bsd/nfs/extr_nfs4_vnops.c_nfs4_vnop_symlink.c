
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_symlink_args {int * a_vpp; int a_target; int a_vap; int a_cnp; int a_dvp; int a_context; } ;
typedef int * nfsnode_t ;


 int NFLNK ;
 int NFSTOV (int *) ;
 int VTONFS (int ) ;
 int nfs4_create_rpc (int ,int ,int ,int ,int ,int ,int **) ;

int
nfs4_vnop_symlink(
 struct vnop_symlink_args *ap)
{
 nfsnode_t np = ((void*)0);
 int error;

 error = nfs4_create_rpc(ap->a_context, VTONFS(ap->a_dvp), ap->a_cnp, ap->a_vap,
   NFLNK, ap->a_target, &np);
 if (!error)
  *ap->a_vpp = NFSTOV(np);
 return (error);
}
