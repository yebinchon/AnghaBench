
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_blktooff_args {scalar_t__* a_offset; int a_vp; } ;
typedef scalar_t__ off_t ;


 int EIO ;
 int chkvnlock (int ) ;

int
dead_blktooff(struct vnop_blktooff_args *ap)
{
    if (!chkvnlock(ap->a_vp))
  return (EIO);

 *ap->a_offset = (off_t)-1;
 return (0);
}
