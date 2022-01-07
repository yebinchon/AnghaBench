
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_close_args {int a_context; int a_fflag; int a_vp; } ;


 int fifo_close_internal (int ,int ,int ,int ) ;

int
fifo_close(struct vnop_close_args *ap)
{
 return fifo_close_internal(ap->a_vp, ap->a_fflag, ap->a_context, 0);
}
