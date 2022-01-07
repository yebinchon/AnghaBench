
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_read_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;


 int EIO ;
 scalar_t__ VCHR ;
 scalar_t__ chkvnlock (TYPE_1__*) ;
 int panic (char*) ;

int
dead_read(struct vnop_read_args *ap)
{

 if (chkvnlock(ap->a_vp))
  panic("dead_read: lock");



 if (ap->a_vp->v_type != VCHR)
  return (EIO);
 return (0);
}
