
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_strategy_args {int a_bp; } ;


 int EIO ;
 int VNOP_STRATEGY (int ) ;
 int buf_biodone (int ) ;
 int buf_seterror (int ,int) ;
 int * buf_vnode (int ) ;
 int chkvnlock (int *) ;

int
dead_strategy(struct vnop_strategy_args *ap)
{

 if (buf_vnode(ap->a_bp) == ((void*)0) || !chkvnlock(buf_vnode(ap->a_bp))) {
         buf_seterror(ap->a_bp, EIO);
  buf_biodone(ap->a_bp);
  return (EIO);
 }
 return (VNOP_STRATEGY(ap->a_bp));
}
