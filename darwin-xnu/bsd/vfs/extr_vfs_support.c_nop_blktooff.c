
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_blktooff_args {scalar_t__* a_offset; } ;
typedef scalar_t__ off_t ;



int
nop_blktooff(struct vnop_blktooff_args *ap)
{
 *ap->a_offset = (off_t)-1;
 return (0);
}
