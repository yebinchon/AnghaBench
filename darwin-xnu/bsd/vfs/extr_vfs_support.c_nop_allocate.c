
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_allocate_args {scalar_t__* a_bytesallocated; } ;



int
nop_allocate(struct vnop_allocate_args *ap)
{
 *(ap->a_bytesallocated) = 0;
 return (0);
}
