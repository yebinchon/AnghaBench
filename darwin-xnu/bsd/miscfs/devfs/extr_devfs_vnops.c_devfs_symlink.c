
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnop_symlink_args {int a_context; int a_vpp; int a_target; TYPE_2__* a_vap; TYPE_1__* a_cnp; int a_dvp; } ;
struct TYPE_7__ {int de_dnp; } ;
typedef TYPE_3__ devdirent_t ;
struct TYPE_6__ {int va_mode; } ;
struct TYPE_5__ {int cn_nameptr; } ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int VTODN (int ) ;
 int devfs_dntovn (int ,int ,int ) ;
 int devfs_make_symlink (int ,int ,int ,int ,TYPE_3__**) ;
 int vfs_context_proc (int ) ;

__attribute__((used)) static int
devfs_symlink(struct vnop_symlink_args *ap)
{
 int error;
 devdirent_t *newent;

 DEVFS_LOCK();
 error = devfs_make_symlink(VTODN(ap->a_dvp), ap->a_cnp->cn_nameptr, ap->a_vap->va_mode, ap->a_target, &newent);

 if (error == 0) {
  error = devfs_dntovn(newent->de_dnp, ap->a_vpp, vfs_context_proc(ap->a_context));
 }

 DEVFS_UNLOCK();

 return error;

}
