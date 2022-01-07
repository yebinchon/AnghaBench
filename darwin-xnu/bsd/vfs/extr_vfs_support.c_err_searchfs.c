
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_searchfs_args {int dummy; } ;


 int ENOTSUP ;
 int nop_searchfs (struct vnop_searchfs_args*) ;

int
err_searchfs(struct vnop_searchfs_args *ap)
{
 (void)nop_searchfs(ap);
 return (ENOTSUP);
}
