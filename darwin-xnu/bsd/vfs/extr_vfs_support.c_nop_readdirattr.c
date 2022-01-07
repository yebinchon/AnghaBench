
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_readdirattr_args {scalar_t__* a_eofflag; scalar_t__* a_actualcount; } ;



int
nop_readdirattr(struct vnop_readdirattr_args *ap)
{
        *(ap->a_actualcount) = 0;
        *(ap->a_eofflag) = 0;
 return (0);
}
