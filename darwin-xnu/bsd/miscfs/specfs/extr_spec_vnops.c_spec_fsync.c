
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_fsync_args {int a_context; int a_waitfor; int a_vp; } ;


 int spec_fsync_internal (int ,int ,int ) ;

int
spec_fsync(struct vnop_fsync_args *ap)
{
 return spec_fsync_internal(ap->a_vp, ap->a_waitfor, ap->a_context);
}
