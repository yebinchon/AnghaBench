
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_blktooff_args {int dummy; } ;


 int ENOTSUP ;
 int nop_blktooff (struct vnop_blktooff_args*) ;

int
err_blktooff(struct vnop_blktooff_args *ap)
{
 (void)nop_blktooff(ap);
 return (ENOTSUP);
}
