
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int Var ;
struct TYPE_4__ {int cmds; } ;
typedef int Relation ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_1__ AlterTableStmt ;


 int AlterTableGetLockLevel (int ) ;
 int AlterTableLookupRelation (TYPE_1__*,int ) ;
 int * DistPartitionKey (int ) ;
 int ErrorIfUnsupportedConstraint (int ,char,int *,int ) ;
 int ExclusiveLock ;
 int NoLock ;
 char PartitionMethod (int ) ;
 int TableColocationId (int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;

__attribute__((used)) static void
ErrorIfUnsupportedAlterAddConstraintStmt(AlterTableStmt *alterTableStatement)
{
 LOCKMODE lockmode = AlterTableGetLockLevel(alterTableStatement->cmds);
 Oid relationId = AlterTableLookupRelation(alterTableStatement, lockmode);
 char distributionMethod = PartitionMethod(relationId);
 Var *distributionColumn = DistPartitionKey(relationId);
 uint32 colocationId = TableColocationId(relationId);
 Relation relation = relation_open(relationId, ExclusiveLock);

 ErrorIfUnsupportedConstraint(relation, distributionMethod, distributionColumn,
         colocationId);
 relation_close(relation, NoLock);
}
