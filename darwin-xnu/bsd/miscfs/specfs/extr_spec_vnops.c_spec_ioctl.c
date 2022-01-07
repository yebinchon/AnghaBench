
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vnop_ioctl_args {int a_fflag; int a_command; scalar_t__ a_data; TYPE_1__* a_vp; int a_context; } ;
typedef int proc_t ;
typedef int dev_t ;
struct TYPE_6__ {int (* d_ioctl ) (int ,int ,scalar_t__,int ,int ) ;} ;
struct TYPE_5__ {int (* d_ioctl ) (int ,int ,scalar_t__,int ,int ) ;} ;
struct TYPE_4__ {int v_type; int v_specsize; int v_rdev; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_IOCTL ;
 int DKIOCSETBLOCKSIZE ;
 int FSDBG_CODE (int ,int ) ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int,int ) ;


 TYPE_3__* bdevsw ;
 TYPE_2__* cdevsw ;
 size_t major (int ) ;
 int panic (char*) ;
 int stub1 (int ,int ,scalar_t__,int ,int ) ;
 int stub2 (int ,int ,scalar_t__,int ,int ) ;
 int vfs_context_proc (int ) ;

int
spec_ioctl(struct vnop_ioctl_args *ap)
{
 proc_t p = vfs_context_proc(ap->a_context);
 dev_t dev = ap->a_vp->v_rdev;
 int retval = 0;

 KERNEL_DEBUG_CONSTANT(FSDBG_CODE(DBG_IOCTL, 0) | DBG_FUNC_START,
  dev, ap->a_command, ap->a_fflag, ap->a_vp->v_type, 0);

 switch (ap->a_vp->v_type) {

 case 128:
  retval = (*cdevsw[major(dev)].d_ioctl)(dev, ap->a_command, ap->a_data,
             ap->a_fflag, p);
  break;

 case 129:
  retval = (*bdevsw[major(dev)].d_ioctl)(dev, ap->a_command, ap->a_data, ap->a_fflag, p);
  if (!retval && ap->a_command == DKIOCSETBLOCKSIZE)
   ap->a_vp->v_specsize = *(uint32_t *)ap->a_data;
  break;

 default:
  panic("spec_ioctl");

 }
 KERNEL_DEBUG_CONSTANT(FSDBG_CODE(DBG_IOCTL, 0) | DBG_FUNC_END,
  dev, ap->a_command, ap->a_fflag, retval, 0);

 return (retval);
}
