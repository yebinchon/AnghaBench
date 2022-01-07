
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int concurrentIndexCmd; char const* commandString; int taskList; int targetRelationId; } ;
struct TYPE_10__ {int renameType; int missing_ok; int relation; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__ DDLJob ;


 int AccessExclusiveLock ;
 int DDLTaskList (int ,char const*) ;
 int ErrorIfUnsupportedRenameStmt (TYPE_1__*) ;
 int IndexGetRelation (int ,int) ;
 int InvalidOid ;
 int IsAlterTableRenameStmt (TYPE_1__*) ;
 int IsDistributedTable (int ) ;
 int IsIndexRenameStmt (TYPE_1__*) ;
 int IsPolicyRenameStmt (TYPE_1__*) ;
 int * NIL ;






 int OidIsValid (int ) ;
 int RangeVarGetRelid (int ,int ,int ) ;
 int * list_make1 (TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;

List *
PlanRenameStmt(RenameStmt *renameStmt, const char *renameCommand)
{
 Oid objectRelationId = InvalidOid;
 Oid tableRelationId = InvalidOid;
 bool isDistributedRelation = 0;
 DDLJob *ddlJob = ((void*)0);





 if (!IsAlterTableRenameStmt(renameStmt) &&
  !IsIndexRenameStmt(renameStmt) &&
  !IsPolicyRenameStmt(renameStmt))
 {
  return NIL;
 }






 objectRelationId = RangeVarGetRelid(renameStmt->relation,
          AccessExclusiveLock,
          renameStmt->missing_ok);





 if (!OidIsValid(objectRelationId))
 {
  return NIL;
 }


 switch (renameStmt->renameType)
 {
  case 128:
  case 132:
  case 133:
  case 129:
  case 130:
  {

   tableRelationId = objectRelationId;
   break;
  }

  case 131:
  {





   tableRelationId = IndexGetRelation(objectRelationId, 0);
   break;
  }

  default:






   return NIL;
 }

 isDistributedRelation = IsDistributedTable(tableRelationId);
 if (!isDistributedRelation)
 {
  return NIL;
 }






 ErrorIfUnsupportedRenameStmt(renameStmt);

 ddlJob = palloc0(sizeof(DDLJob));
 ddlJob->targetRelationId = tableRelationId;
 ddlJob->concurrentIndexCmd = 0;
 ddlJob->commandString = renameCommand;
 ddlJob->taskList = DDLTaskList(tableRelationId, renameCommand);

 return list_make1(ddlJob);
}
