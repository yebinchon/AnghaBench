
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nodeRole; } ;
typedef TYPE_1__ WorkerNode ;
typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 scalar_t__ PrimaryNodeRoleId () ;

bool
NodeIsPrimary(WorkerNode *worker)
{
 Oid primaryRole = PrimaryNodeRoleId();


 if (primaryRole == InvalidOid)
 {
  return 1;
 }

 return worker->nodeRole == primaryRole;
}
