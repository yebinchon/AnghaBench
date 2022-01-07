
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * relation; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ ClusterStmt ;


 int AccessShareLock ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 int * NIL ;
 scalar_t__ OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

List *
PlanClusterStmt(ClusterStmt *clusterStmt, const char *clusterCommand)
{
 bool showPropagationWarning = 0;


 if (clusterStmt->relation == ((void*)0))
 {
  showPropagationWarning = 1;
 }
 else
 {
  Oid relationId = InvalidOid;
  bool missingOK = 0;

  relationId = RangeVarGetRelid(clusterStmt->relation, AccessShareLock,
           missingOK);

  if (OidIsValid(relationId))
  {
   showPropagationWarning = IsDistributedTable(relationId);
  }
 }

 if (showPropagationWarning)
 {
  ereport(WARNING, (errmsg("not propagating CLUSTER command to worker nodes")));
 }

 return NIL;
}
