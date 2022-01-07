
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnop_select_args {int a_wql; int a_which; TYPE_1__* a_vp; int a_context; } ;
typedef int proc_t ;
typedef int dev_t ;
struct TYPE_4__ {int (* d_select ) (int ,int ,int ,int ) ;} ;
struct TYPE_3__ {int v_type; int v_rdev; } ;



 TYPE_2__* cdevsw ;
 size_t major (int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int vfs_context_proc (int ) ;

int
spec_select(struct vnop_select_args *ap)
{
 proc_t p = vfs_context_proc(ap->a_context);
 dev_t dev;

 switch (ap->a_vp->v_type) {

 default:
  return (1);

 case 128:
  dev = ap->a_vp->v_rdev;
  return (*cdevsw[major(dev)].d_select)(dev, ap->a_which, ap->a_wql, p);
 }
}
