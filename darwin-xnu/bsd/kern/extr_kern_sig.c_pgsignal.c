
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int dummy; } ;


 struct pgrp* PGRP_NULL ;
 int pgrp_iterate (struct pgrp*,int ,int ,int*,int ,int*) ;
 int pgsignal_callback ;
 int pgsignal_filt ;

void
pgsignal(struct pgrp *pgrp, int signum, int checkctty)
{
 if (pgrp != PGRP_NULL) {
  pgrp_iterate(pgrp, 0, pgsignal_callback, &signum, pgsignal_filt, &checkctty);
 }
}
