
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int dummy; } ;


 struct pgrp* PGRP_NULL ;
 int pg_rele_dropref (struct pgrp*) ;

void
pg_rele(struct pgrp * pgrp)
{
 if(pgrp == PGRP_NULL)
  return;
 pg_rele_dropref(pgrp);
}
