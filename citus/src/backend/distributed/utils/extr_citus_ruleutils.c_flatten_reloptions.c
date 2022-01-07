
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_class_reloptions ;
 int DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int deconstruct_array (int ,int ,int,int,char,int **,int *,int*) ;
 int elog (int ,char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 char* quote_identifier (char*) ;
 int simple_quote_literal (TYPE_1__*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
flatten_reloptions(Oid relid)
{
 char *result = ((void*)0);
 HeapTuple tuple;
 Datum reloptions;
 bool isnull;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
 {
  elog(ERROR, "cache lookup failed for relation %u", relid);
 }

 reloptions = SysCacheGetAttr(RELOID, tuple,
         Anum_pg_class_reloptions, &isnull);
 if (!isnull)
 {
  StringInfoData buf;
  Datum *options;
  int noptions;
  int i;

  initStringInfo(&buf);

  deconstruct_array(DatumGetArrayTypeP(reloptions),
        TEXTOID, -1, 0, 'i',
        &options, ((void*)0), &noptions);

  for (i = 0; i < noptions; i++)
  {
   char *option = TextDatumGetCString(options[i]);
   char *name;
   char *separator;
   char *value;





   name = option;
   separator = strchr(option, '=');
   if (separator)
   {
    *separator = '\0';
    value = separator + 1;
   }
   else
   {
    value = "";
   }

   if (i > 0)
   {
    appendStringInfoString(&buf, ", ");
   }
   appendStringInfo(&buf, "%s=", quote_identifier(name));
   if (quote_identifier(value) == value)
   {
    appendStringInfoString(&buf, value);
   }
   else
   {
    simple_quote_literal(&buf, value);
   }

   pfree(option);
  }

  result = buf.data;
 }

 ReleaseSysCache(tuple);

 return result;
}
