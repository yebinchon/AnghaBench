
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pronamespace; int proname; } ;
struct TYPE_9__ {int objargs; int args_unspecified; int objname; } ;
struct TYPE_8__ {int addCatalog; int schemas; } ;
typedef int StringInfo ;
typedef TYPE_1__ OverrideSearchPath ;
typedef int Oid ;
typedef TYPE_2__ ObjectWithArgs ;
typedef int ObjectType ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;
typedef int Datum ;


 int CurrentMemoryContext ;
 int DeconstructQualifiedName (int ,char**,char**) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_1__* GetOverrideSearchPath (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int LookupFuncWithArgs (int ,TYPE_2__*,int) ;
 int NIL ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PROCOID ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_1__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* TextDatumGetCString (int ) ;
 char* TypeNameListToString (int ) ;
 int appendStringInfo (int ,char*,char const*) ;
 int appendStringInfoString (int ,char*) ;
 char* get_namespace_name (int ) ;
 int pg_get_function_identity_arguments ;
 char* pstrdup (char*) ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static void
AppendFunctionName(StringInfo buf, ObjectWithArgs *func, ObjectType objtype)
{
 Oid funcid = InvalidOid;
 HeapTuple proctup;
 char *functionName = ((void*)0);
 char *schemaName = ((void*)0);
 char *qualifiedFunctionName;

 funcid = LookupFuncWithArgs(objtype, func, 1);
 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));

 if (!HeapTupleIsValid(proctup))
 {






  DeconstructQualifiedName(func->objname, &schemaName, &functionName);
 }
 else
 {
  Form_pg_proc procform;

  procform = (Form_pg_proc) GETSTRUCT(proctup);
  functionName = NameStr(procform->proname);
  functionName = pstrdup(functionName);
  schemaName = get_namespace_name(procform->pronamespace);

  ReleaseSysCache(proctup);
 }

 qualifiedFunctionName = quote_qualified_identifier(schemaName, functionName);
 appendStringInfoString(buf, qualifiedFunctionName);

 if (OidIsValid(funcid))
 {




  OverrideSearchPath *overridePath = ((void*)0);
  Datum sqlTextDatum = 0;
  const char *args = ((void*)0);






  overridePath = GetOverrideSearchPath(CurrentMemoryContext);
  overridePath->schemas = NIL;
  overridePath->addCatalog = 1;

  PushOverrideSearchPath(overridePath);

  sqlTextDatum = DirectFunctionCall1(pg_get_function_identity_arguments,
             ObjectIdGetDatum(funcid));


  PopOverrideSearchPath();

  args = TextDatumGetCString(sqlTextDatum);
  appendStringInfo(buf, "(%s)", args);
 }
 else if (!func->args_unspecified)
 {






  const char *args = ((void*)0);

  args = TypeNameListToString(func->objargs);
  appendStringInfo(buf, "(%s)", args);
 }





}
