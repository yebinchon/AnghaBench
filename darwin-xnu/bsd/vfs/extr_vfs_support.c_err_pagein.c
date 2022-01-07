
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_pagein_args {int a_flags; int a_size; int a_pl_offset; int a_pl; } ;


 int ENOTSUP ;
 int UPL_ABORT_ERROR ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_NOCOMMIT ;
 int ubc_upl_abort_range (int ,int ,int ,int) ;

int
err_pagein(struct vnop_pagein_args *ap)
{
        if ( !(ap->a_flags & UPL_NOCOMMIT))
         ubc_upl_abort_range(ap->a_pl, ap->a_pl_offset, ap->a_size, UPL_ABORT_FREE_ON_EMPTY | UPL_ABORT_ERROR);
 return (ENOTSUP);
}
