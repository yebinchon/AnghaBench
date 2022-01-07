
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int * NIL ;
 char RELKIND_RELATION ;
 char get_rel_relkind (int ) ;
 int * lappend (int *,char*) ;
 char* pg_get_replica_identity_command (int ) ;

__attribute__((used)) static List *
GetTableReplicaIdentityCommand(Oid relationId)
{
 List *replicaIdentityCreateCommandList = NIL;
 char *replicaIdentityCreateCommand = ((void*)0);





 char relationKind = get_rel_relkind(relationId);
 if (relationKind != RELKIND_RELATION)
 {
  return NIL;
 }

 replicaIdentityCreateCommand = pg_get_replica_identity_command(relationId);

 if (replicaIdentityCreateCommand)
 {
  replicaIdentityCreateCommandList = lappend(replicaIdentityCreateCommandList,
               replicaIdentityCreateCommand);
 }

 return replicaIdentityCreateCommandList;
}
