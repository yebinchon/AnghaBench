
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ aggkind; int aggnumdirectargs; scalar_t__ aggtransfn; char* aggtransspace; scalar_t__ aggfinalfn; int aggfinalmodify; char* aggmtransspace; scalar_t__ aggmfinalfn; scalar_t__ aggmtransfn; scalar_t__ aggminvtransfn; scalar_t__ aggcombinefn; scalar_t__ aggserialfn; scalar_t__ aggdeserialfn; scalar_t__ aggsortop; scalar_t__ aggmtranstype; scalar_t__ aggmfinalextra; scalar_t__ aggfinalextra; scalar_t__ aggtranstype; } ;
struct TYPE_9__ {scalar_t__ prokind; int proparallel; int pronamespace; int proname; } ;
struct TYPE_8__ {char* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef char RegProcedure ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef TYPE_3__* Form_pg_aggregate ;
typedef int Datum ;


 int AGGFNOID ;
 scalar_t__ AGGKIND_HYPOTHETICAL ;
 scalar_t__ AGGKIND_IS_ORDERED_SET (scalar_t__) ;



 int Anum_pg_aggregate_agginitval ;
 int Anum_pg_aggregate_aggminitval ;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 scalar_t__ InvalidOid ;
 char* NameStr (int ) ;


 int PROCOID ;
 scalar_t__ PROKIND_AGGREGATE ;



 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,char const) ;
 int SysCacheGetAttr (int ,int *,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int WARNING ;
 char* WrapCreateOrReplace (char*) ;
 int appendStringInfo (TYPE_1__*,char*,char const*,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char const*) ;
 int elog (int ,char*,char const) ;
 char* format_type_be_qualified (scalar_t__) ;
 char* generate_operator_name (scalar_t__,scalar_t__,scalar_t__) ;
 int get_func_arg_info (int *,scalar_t__**,char***,char**) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 char* quote_identifier (char*) ;
 char* quote_literal_cstr (char*) ;
 char* quote_qualified_func_name (scalar_t__) ;
 char* quote_qualified_identifier (char const*,char const*) ;

__attribute__((used)) static char *
GetAggregateDDLCommand(const RegProcedure funcOid, bool useCreateOrReplace)
{
 StringInfoData buf = { 0 };
 HeapTuple proctup = ((void*)0);
 Form_pg_proc proc = ((void*)0);
 HeapTuple aggtup = ((void*)0);
 Form_pg_aggregate agg = ((void*)0);
 const char *name = ((void*)0);
 const char *nsp = ((void*)0);
 int numargs = 0;
 int i = 0;
 Oid *argtypes = ((void*)0);
 char **argnames = ((void*)0);
 char *argmodes = ((void*)0);
 int insertorderbyat = -1;
 int argsprinted = 0;
 int inputargno = 0;

 proctup = SearchSysCache1(PROCOID, funcOid);
 if (!HeapTupleIsValid(proctup))
 {
  elog(ERROR, "cache lookup failed for %d", funcOid);
 }

 proc = (Form_pg_proc) GETSTRUCT(proctup);

 Assert(proc->prokind == PROKIND_AGGREGATE);

 initStringInfo(&buf);

 name = NameStr(proc->proname);
 nsp = get_namespace_name(proc->pronamespace);
 appendStringInfo(&buf, "CREATE AGGREGATE %s(",
      quote_qualified_identifier(nsp, name));



 numargs = get_func_arg_info(proctup, &argtypes, &argnames, &argmodes);

 aggtup = SearchSysCache1(AGGFNOID, funcOid);
 if (!HeapTupleIsValid(aggtup))
 {
  elog(ERROR, "cache lookup failed for %d", funcOid);
 }
 agg = (Form_pg_aggregate) GETSTRUCT(aggtup);

 if (AGGKIND_IS_ORDERED_SET(agg->aggkind))
 {
  insertorderbyat = agg->aggnumdirectargs;
 }

 for (i = 0; i < numargs; i++)
 {
  Oid argtype = argtypes[i];
  char *argname = argnames ? argnames[i] : ((void*)0);
  char argmode = argmodes ? argmodes[i] : 132;
  const char *modename;

  switch (argmode)
  {
   case 132:
   {
    modename = "";
    break;
   }

   case 131:
   {
    modename = "VARIADIC ";
    break;
   }

   default:
   {
    elog(ERROR, "unexpected parameter mode '%c'", argmode);
    modename = ((void*)0);
    break;
   }
  }

  inputargno++;
  if (argsprinted == insertorderbyat)
  {
   appendStringInfoString(&buf, " ORDER BY ");
  }
  else if (argsprinted)
  {
   appendStringInfoString(&buf, ", ");
  }

  appendStringInfoString(&buf, modename);

  if (argname && argname[0])
  {
   appendStringInfo(&buf, "%s ", quote_identifier(argname));
  }

  appendStringInfoString(&buf, format_type_be_qualified(argtype));

  argsprinted++;


  if (argsprinted == insertorderbyat && i == numargs - 1)
  {
   i--;
  }
 }

 appendStringInfo(&buf, ") (STYPE = %s,SFUNC = %s",
      format_type_be_qualified(agg->aggtranstype),
      quote_qualified_func_name(agg->aggtransfn));

 if (agg->aggtransspace != 0)
 {
  appendStringInfo(&buf, ", SSPACE = %d", agg->aggtransspace);
 }

 if (agg->aggfinalfn != InvalidOid)
 {
  const char *finalmodifystring = ((void*)0);
  switch (agg->aggfinalmodify)
  {
   case 135:
   {
    finalmodifystring = "READ_ONLY";
    break;
   }

   case 133:
   {
    finalmodifystring = "SHAREABLE";
    break;
   }

   case 134:
   {
    finalmodifystring = "READ_WRITE";
    break;
   }
  }

  appendStringInfo(&buf, ", FINALFUNC = %s",
       quote_qualified_func_name(agg->aggfinalfn));

  if (finalmodifystring != ((void*)0))
  {
   appendStringInfo(&buf, ", FINALFUNC_MODIFY = %s", finalmodifystring);
  }

  if (agg->aggfinalextra)
  {
   appendStringInfoString(&buf, ", FINALFUNC_EXTRA");
  }
 }

 if (agg->aggmtransspace != 0)
 {
  appendStringInfo(&buf, ", MSSPACE = %d", agg->aggmtransspace);
 }

 if (agg->aggmfinalfn)
 {
  const char *mfinalmodifystring = ((void*)0);
  switch (agg->aggfinalmodify)
  {
   case 135:
   {
    mfinalmodifystring = "READ_ONLY";
    break;
   }

   case 133:
   {
    mfinalmodifystring = "SHAREABLE";
    break;
   }

   case 134:
   {
    mfinalmodifystring = "READ_WRITE";
    break;
   }
  }

  appendStringInfo(&buf, ", MFINALFUNC = %s",
       quote_qualified_func_name(agg->aggmfinalfn));

  if (mfinalmodifystring != ((void*)0))
  {
   appendStringInfo(&buf, ", MFINALFUNC_MODIFY = %s", mfinalmodifystring);
  }

  if (agg->aggmfinalextra)
  {
   appendStringInfoString(&buf, ", MFINALFUNC_EXTRA");
  }
 }

 if (agg->aggmtransfn)
 {
  appendStringInfo(&buf, ", MSFUNC = %s",
       quote_qualified_func_name(agg->aggmtransfn));

  if (agg->aggmtranstype)
  {
   appendStringInfo(&buf, ", MSTYPE = %s",
        format_type_be_qualified(agg->aggmtranstype));
  }
 }

 if (agg->aggtransspace != 0)
 {
  appendStringInfo(&buf, ", SSPACE = %d", agg->aggtransspace);
 }

 if (agg->aggminvtransfn)
 {
  appendStringInfo(&buf, ", MINVFUNC = %s",
       quote_qualified_func_name(agg->aggminvtransfn));
 }

 if (agg->aggcombinefn)
 {
  appendStringInfo(&buf, ", COMBINEFUNC = %s",
       quote_qualified_func_name(agg->aggcombinefn));
 }

 if (agg->aggserialfn)
 {
  appendStringInfo(&buf, ", SERIALFUNC = %s",
       quote_qualified_func_name(agg->aggserialfn));
 }

 if (agg->aggdeserialfn)
 {
  appendStringInfo(&buf, ", DESERIALFUNC = %s",
       quote_qualified_func_name(agg->aggdeserialfn));
 }

 if (agg->aggsortop != InvalidOid)
 {
  appendStringInfo(&buf, ", SORTOP = %s",
       generate_operator_name(agg->aggsortop, argtypes[0],
            argtypes[0]));
 }

 {
  const char *parallelstring = ((void*)0);
  switch (proc->proparallel)
  {
   case 129:
   {
    parallelstring = "SAFE";
    break;
   }

   case 130:
   {
    parallelstring = "RESTRICTED";
    break;
   }

   case 128:
   {
    break;
   }

   default:
   {
    elog(WARNING, "Unknown parallel option, ignoring: %c", proc->proparallel);
    break;
   }
  }

  if (parallelstring != ((void*)0))
  {
   appendStringInfo(&buf, ", PARALLEL = %s", parallelstring);
  }
 }

 {
  bool isNull = 0;
  Datum textInitVal = SysCacheGetAttr(AGGFNOID, aggtup,
           Anum_pg_aggregate_agginitval,
           &isNull);
  if (!isNull)
  {
   char *strInitVal = TextDatumGetCString(textInitVal);
   char *strInitValQuoted = quote_literal_cstr(strInitVal);

   appendStringInfo(&buf, ", INITCOND = %s", strInitValQuoted);

   pfree(strInitValQuoted);
   pfree(strInitVal);
  }
 }

 {
  bool isNull = 0;
  Datum textInitVal = SysCacheGetAttr(AGGFNOID, aggtup,
           Anum_pg_aggregate_aggminitval,
           &isNull);
  if (!isNull)
  {
   char *strInitVal = TextDatumGetCString(textInitVal);
   char *strInitValQuoted = quote_literal_cstr(strInitVal);

   appendStringInfo(&buf, ", MINITCOND = %s", strInitValQuoted);

   pfree(strInitValQuoted);
   pfree(strInitVal);
  }
 }

 if (agg->aggkind == AGGKIND_HYPOTHETICAL)
 {
  appendStringInfoString(&buf, ", HYPOTHETICAL");
 }

 appendStringInfoChar(&buf, ')');

 ReleaseSysCache(aggtup);
 ReleaseSysCache(proctup);


 if (useCreateOrReplace)
 {
  return WrapCreateOrReplace(buf.data);
 }

 return buf.data;
}
