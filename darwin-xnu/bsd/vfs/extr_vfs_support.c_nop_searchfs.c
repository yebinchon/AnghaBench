
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_searchfs_args {scalar_t__* a_nummatches; } ;



int
nop_searchfs(struct vnop_searchfs_args *ap)
{
 *(ap->a_nummatches) = 0;
 return (0);
}
