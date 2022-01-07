
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_mknod_args {int dummy; } ;


 int ENOTSUP ;
 int nop_mknod (struct vnop_mknod_args*) ;

int
err_mknod(struct vnop_mknod_args *ap)
{
 (void)nop_mknod(ap);
 return (ENOTSUP);
}
