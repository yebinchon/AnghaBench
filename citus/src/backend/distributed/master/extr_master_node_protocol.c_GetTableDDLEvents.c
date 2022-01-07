
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int * CreatePolicyCommands (int ) ;
 int * GetTableCreationCommands (int ,int) ;
 int * GetTableIndexAndConstraintCommands (int ) ;
 int * GetTableReplicaIdentityCommand (int ) ;
 int * NIL ;
 int * list_concat (int *,int *) ;

List *
GetTableDDLEvents(Oid relationId, bool includeSequenceDefaults)
{
 List *tableDDLEventList = NIL;
 List *tableCreationCommandList = NIL;
 List *indexAndConstraintCommandList = NIL;
 List *replicaIdentityEvents = NIL;
 List *policyCommands = NIL;

 tableCreationCommandList = GetTableCreationCommands(relationId,
              includeSequenceDefaults);
 tableDDLEventList = list_concat(tableDDLEventList, tableCreationCommandList);

 indexAndConstraintCommandList = GetTableIndexAndConstraintCommands(relationId);
 tableDDLEventList = list_concat(tableDDLEventList, indexAndConstraintCommandList);

 replicaIdentityEvents = GetTableReplicaIdentityCommand(relationId);
 tableDDLEventList = list_concat(tableDDLEventList, replicaIdentityEvents);

 policyCommands = CreatePolicyCommands(relationId);
 tableDDLEventList = list_concat(tableDDLEventList, policyCommands);

 return tableDDLEventList;
}
