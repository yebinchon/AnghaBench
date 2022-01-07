
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_lookup_args {int ** a_vpp; } ;


 int ENOTDIR ;

int
spec_lookup(struct vnop_lookup_args *ap)
{

 *ap->a_vpp = ((void*)0);
 return (ENOTDIR);
}
