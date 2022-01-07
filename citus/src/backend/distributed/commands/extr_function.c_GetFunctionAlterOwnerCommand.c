
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ prokind; int proowner; } ;
struct TYPE_9__ {int addCatalog; int schemas; } ;
struct TYPE_8__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int RegProcedure ;
typedef TYPE_2__ OverrideSearchPath ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;
typedef int Datum ;


 int CurrentMemoryContext ;
 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_2__* GetOverrideSearchPath (int ) ;
 char* GetUserNameFromId (int ,int) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NIL ;
 int ObjectIdGetDatum (int const) ;
 int OidIsValid (int const) ;
 int PROCOID ;
 scalar_t__ PROKIND_AGGREGATE ;
 scalar_t__ PROKIND_PROCEDURE ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_2__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int const) ;
 TYPE_1__* makeStringInfo () ;
 int quote_identifier (char*) ;
 int regprocedureout ;

__attribute__((used)) static char *
GetFunctionAlterOwnerCommand(const RegProcedure funcOid)
{
 HeapTuple proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcOid));
 StringInfo alterCommand = makeStringInfo();
 char *kindString = "FUNCTION";
 Oid procOwner = InvalidOid;

 char *functionSignature = ((void*)0);
 char *functionOwner = ((void*)0);

 OverrideSearchPath *overridePath = ((void*)0);
 Datum functionSignatureDatum = 0;

 if (HeapTupleIsValid(proctup))
 {
  Form_pg_proc procform;

  procform = (Form_pg_proc) GETSTRUCT(proctup);

  procOwner = procform->proowner;

  if (procform->prokind == PROKIND_PROCEDURE)
  {
   kindString = "PROCEDURE";
  }
  else if (procform->prokind == PROKIND_AGGREGATE)
  {
   kindString = "AGGREGATE";
  }

  ReleaseSysCache(proctup);
 }
 else if (!OidIsValid(funcOid) || !HeapTupleIsValid(proctup))
 {
  ereport(ERROR, (errmsg("cannot find function with oid: %d", funcOid)));
 }






 overridePath = GetOverrideSearchPath(CurrentMemoryContext);
 overridePath->schemas = NIL;
 overridePath->addCatalog = 1;

 PushOverrideSearchPath(overridePath);





 functionSignatureDatum =
  DirectFunctionCall1(regprocedureout, ObjectIdGetDatum(funcOid));


 PopOverrideSearchPath();


 functionSignature = DatumGetCString(functionSignatureDatum);

 functionOwner = GetUserNameFromId(procOwner, 0);

 appendStringInfo(alterCommand, "ALTER %s %s OWNER TO %s;",
      kindString,
      functionSignature,
      quote_identifier(functionOwner));

 return alterCommand->data;
}
