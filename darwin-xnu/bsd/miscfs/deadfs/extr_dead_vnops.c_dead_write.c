
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_write_args {int a_vp; } ;


 int EIO ;
 scalar_t__ chkvnlock (int ) ;
 int panic (char*) ;

int
dead_write(struct vnop_write_args *ap)
{

 if (chkvnlock(ap->a_vp))
  panic("dead_write: lock");
 return (EIO);
}
