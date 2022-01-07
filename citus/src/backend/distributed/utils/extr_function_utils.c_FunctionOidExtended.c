
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; int * next; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__* FuncCandidateList ;


 int ERRCODE_AMBIGUOUS_FUNCTION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 TYPE_1__* FuncnameGetCandidates (int *,int,int *,int const,int const,int) ;
 int InvalidOid ;
 int * NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char* quote_qualified_identifier (char const*,char const*) ;
 int * stringToQualifiedNameList (char*) ;

Oid
FunctionOidExtended(const char *schemaName, const char *functionName, int argumentCount,
     bool missingOK)
{
 FuncCandidateList functionList = ((void*)0);
 Oid functionOid = InvalidOid;

 char *qualifiedFunctionName = quote_qualified_identifier(schemaName, functionName);
 List *qualifiedFunctionNameList = stringToQualifiedNameList(qualifiedFunctionName);
 List *argumentList = NIL;
 const bool findVariadics = 0;
 const bool findDefaults = 0;

 functionList = FuncnameGetCandidates(qualifiedFunctionNameList, argumentCount,
           argumentList, findVariadics,
           findDefaults, 1);

 if (functionList == ((void*)0))
 {
  if (missingOK)
  {
   return InvalidOid;
  }

  ereport(ERROR, (errcode(ERRCODE_UNDEFINED_FUNCTION),
      errmsg("function \"%s\" does not exist", functionName)));
 }
 else if (functionList->next != ((void*)0))
 {
  ereport(ERROR, (errcode(ERRCODE_AMBIGUOUS_FUNCTION),
      errmsg("more than one function named \"%s\"", functionName)));
 }


 functionOid = functionList->oid;

 return functionOid;
}
