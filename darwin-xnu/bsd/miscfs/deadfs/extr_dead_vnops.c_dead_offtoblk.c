
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_offtoblk_args {scalar_t__* a_lblkno; int a_vp; } ;
typedef scalar_t__ daddr64_t ;


 int EIO ;
 int chkvnlock (int ) ;

int
dead_offtoblk(struct vnop_offtoblk_args *ap)
{
    if (!chkvnlock(ap->a_vp))
  return (EIO);

 *ap->a_lblkno = (daddr64_t)-1;
 return (0);
}
