
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int pg_mlock; } ;


 int lck_mtx_lock (int *) ;

void
pgrp_lock(struct pgrp * pgrp)
{
 lck_mtx_lock(&pgrp->pg_mlock);
}
