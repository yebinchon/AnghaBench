
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_rmdir_args {int a_context; int a_cnp; int a_vp; int a_dvp; } ;
struct vnop_remove_args {int a_context; scalar_t__ a_flags; int a_cnp; int a_vp; int a_dvp; } ;


 int devfs_vnop_remove (struct vnop_remove_args*) ;

__attribute__((used)) static int
devfs_rmdir(struct vnop_rmdir_args *ap)






{
 struct vnop_remove_args ra;

 ra.a_dvp = ap->a_dvp;
 ra.a_vp = ap->a_vp;
 ra.a_cnp = ap->a_cnp;
 ra.a_flags = 0;
 ra.a_context = ap->a_context;

 return devfs_vnop_remove(&ra);
}
