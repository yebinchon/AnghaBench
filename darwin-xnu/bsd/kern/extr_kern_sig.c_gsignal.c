
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int dummy; } ;


 int pg_rele (struct pgrp*) ;
 struct pgrp* pgfind (int) ;
 int pgsignal (struct pgrp*,int,int ) ;

void
gsignal(int pgid, int signum)
{
 struct pgrp *pgrp;

 if (pgid && (pgrp = pgfind(pgid))) {
  pgsignal(pgrp, signum, 0);
  pg_rele(pgrp);
 }
}
