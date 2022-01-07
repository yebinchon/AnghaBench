
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_bwrite_args {int a_bp; } ;


 int buf_bwrite (int ) ;

int
vn_bwrite(struct vnop_bwrite_args *ap)
{
 return (buf_bwrite(ap->a_bp));
}
