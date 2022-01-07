
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int pg_mlock; } ;


 int lck_mtx_unlock (int *) ;

void
pgrp_unlock(struct pgrp * pgrp)
{
 lck_mtx_unlock(&pgrp->pg_mlock);
}
