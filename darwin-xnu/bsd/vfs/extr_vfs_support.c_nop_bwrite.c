
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_bwrite_args {int a_bp; } ;


 scalar_t__ buf_bwrite (int ) ;

int
nop_bwrite(struct vnop_bwrite_args *ap)
{
 return ((int)buf_bwrite(ap->a_bp));
}
