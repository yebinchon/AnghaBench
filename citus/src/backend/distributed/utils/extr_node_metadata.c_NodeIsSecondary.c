
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nodeRole; } ;
typedef TYPE_1__ WorkerNode ;
typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 scalar_t__ SecondaryNodeRoleId () ;

bool
NodeIsSecondary(WorkerNode *worker)
{
 Oid secondaryRole = SecondaryNodeRoleId();


 if (secondaryRole == InvalidOid)
 {
  return 0;
 }

 return worker->nodeRole == secondaryRole;
}
