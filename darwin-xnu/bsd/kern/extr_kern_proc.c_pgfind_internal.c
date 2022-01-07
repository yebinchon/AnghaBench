
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pgrp* le_next; } ;
struct pgrp {scalar_t__ pg_id; TYPE_1__ pg_hash; } ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {struct pgrp* lh_first; } ;


 TYPE_2__* PGRPHASH (scalar_t__) ;

struct pgrp *
pgfind_internal(pid_t pgid)
{
 struct pgrp *pgrp;

 for (pgrp = PGRPHASH(pgid)->lh_first; pgrp != 0; pgrp = pgrp->pg_hash.le_next)
  if (pgrp->pg_id == pgid)
   return (pgrp);
 return (((void*)0));
}
