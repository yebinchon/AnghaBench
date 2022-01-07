
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_offtoblk_args {scalar_t__* a_lblkno; } ;
typedef scalar_t__ daddr64_t ;



int
nop_offtoblk(struct vnop_offtoblk_args *ap)
{
 *ap->a_lblkno = (daddr64_t)-1;
 return (0);
}
