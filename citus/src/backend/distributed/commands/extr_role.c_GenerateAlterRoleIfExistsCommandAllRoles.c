
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
typedef int TableScanDesc ;
struct TYPE_2__ {int rolname; } ;
typedef int Relation ;
typedef int List ;
typedef int * HeapTuple ;
typedef int HeapScanDesc ;
typedef TYPE_1__* Form_pg_authid ;


 int AccessShareLock ;
 int AuthIdRelationId ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int *) ;
 char* GenerateAlterRoleIfExistsCommand (int *,int ) ;
 scalar_t__ IsReservedName (char const*) ;
 int * NIL ;
 char* NameStr (int ) ;
 int RelationGetDescr (int ) ;
 int heap_beginscan_catalog (int ,int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_endscan (int ) ;
 int * heap_getnext (int ,int ) ;
 int heap_open (int ,int ) ;
 int * lappend (int *,void*) ;
 int table_beginscan_catalog (int ,int ,int *) ;

List *
GenerateAlterRoleIfExistsCommandAllRoles()
{
 Relation pgAuthId = heap_open(AuthIdRelationId, AccessShareLock);
 TupleDesc pgAuthIdDescription = RelationGetDescr(pgAuthId);
 HeapTuple tuple = ((void*)0);
 List *commands = NIL;
 const char *alterRoleQuery = ((void*)0);




 HeapScanDesc scan = heap_beginscan_catalog(pgAuthId, 0, ((void*)0));


 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  const char *rolename = NameStr(((Form_pg_authid) GETSTRUCT(tuple))->rolname);





  if (IsReservedName(rolename))
  {
   continue;
  }
  alterRoleQuery = GenerateAlterRoleIfExistsCommand(tuple, pgAuthIdDescription);
  commands = lappend(commands, (void *) alterRoleQuery);
 }

 heap_endscan(scan);
 heap_close(pgAuthId, AccessShareLock);

 return commands;
}
