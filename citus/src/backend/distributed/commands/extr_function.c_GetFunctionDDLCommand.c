
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addCatalog; int schemas; } ;
typedef int RegProcedure ;
typedef TYPE_1__ OverrideSearchPath ;
typedef int Datum ;


 int CurrentMemoryContext ;
 int DirectFunctionCall1 (int ,int ) ;
 char* GetAggregateDDLCommand (int const,int) ;
 TYPE_1__* GetOverrideSearchPath (int ) ;
 int NIL ;
 int ObjectIdGetDatum (int const) ;
 scalar_t__ PROKIND_AGGREGATE ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_1__*) ;
 char* TextDatumGetCString (int ) ;
 scalar_t__ get_func_prokind (int const) ;
 int pg_get_functiondef ;

char *
GetFunctionDDLCommand(const RegProcedure funcOid, bool useCreateOrReplace)
{
 OverrideSearchPath *overridePath = ((void*)0);
 char *createFunctionSQL = ((void*)0);

 if (get_func_prokind(funcOid) == PROKIND_AGGREGATE)
 {
  createFunctionSQL = GetAggregateDDLCommand(funcOid, useCreateOrReplace);
 }
 else
 {
  Datum sqlTextDatum = (Datum) 0;






  overridePath = GetOverrideSearchPath(CurrentMemoryContext);
  overridePath->schemas = NIL;
  overridePath->addCatalog = 1;

  PushOverrideSearchPath(overridePath);
  sqlTextDatum = DirectFunctionCall1(pg_get_functiondef,
             ObjectIdGetDatum(funcOid));
  createFunctionSQL = TextDatumGetCString(sqlTextDatum);


  PopOverrideSearchPath();
 }

 return createFunctionSQL;
}
