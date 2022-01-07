
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct pgrp {int dummy; } ;


 struct pgrp* PGRP_NULL ;
 int pg_rele (struct pgrp*) ;
 int pgrp_iterate (struct pgrp*,int ,int ,int*,int ,int*) ;
 int pgsignal_callback ;
 int pgsignal_filt ;
 struct pgrp* tty_pgrp (struct tty*) ;

void
tty_pgsignal(struct tty *tp, int signum, int checkctty)
{
 struct pgrp * pg;

 pg = tty_pgrp(tp);
 if (pg != PGRP_NULL) {
  pgrp_iterate(pg, 0, pgsignal_callback, &signum, pgsignal_filt, &checkctty);
  pg_rele(pg);
 }
}
