
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int proname; int pronamespace; } ;
struct TYPE_5__ {int objname; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectWithArgs ;
typedef int ObjectType ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int LookupFuncWithArgs (int ,TYPE_1__*,int) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* get_namespace_name (int ) ;
 int list_make2 (int ,int ) ;
 int makeString (char*) ;
 char* pstrdup (char*) ;

void
QualifyFunctionSchemaName(ObjectWithArgs *func, ObjectType type)
{
 char *schemaName = ((void*)0);
 char *functionName = ((void*)0);
 Oid funcid = InvalidOid;
 HeapTuple proctup;

 funcid = LookupFuncWithArgs(type, func, 1);
 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));






 if (HeapTupleIsValid(proctup))
 {
  Form_pg_proc procform;

  procform = (Form_pg_proc) GETSTRUCT(proctup);
  schemaName = get_namespace_name(procform->pronamespace);
  functionName = NameStr(procform->proname);
  functionName = pstrdup(functionName);

  ReleaseSysCache(proctup);


  func->objname = list_make2(makeString(schemaName), makeString(functionName));
 }
}
