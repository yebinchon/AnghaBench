
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int * HeapTuple ;


 int Assert (int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int NAMEDATALEN ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 scalar_t__ argumentStartsWith (char*,char*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 int get_func_arg_info (int *,int **,char***,char**) ;
 char* get_func_name (int ) ;
 int pg_atoi (char*,int,int ) ;
 scalar_t__ pg_strncasecmp (char*,char*,int ) ;

__attribute__((used)) static int
GetDistributionArgIndex(Oid functionOid, char *distributionArgumentName,
      Oid *distributionArgumentOid)
{
 int distributionArgumentIndex = -1;

 int numberOfArgs = 0;
 int argIndex = 0;
 Oid *argTypes = ((void*)0);
 char **argNames = ((void*)0);
 char *argModes = ((void*)0);

 HeapTuple proctup = ((void*)0);

 *distributionArgumentOid = InvalidOid;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionOid));
 if (!HeapTupleIsValid(proctup))
 {
  elog(ERROR, "cache lookup failed for function %u", functionOid);
 }

 numberOfArgs = get_func_arg_info(proctup, &argTypes, &argNames, &argModes);

 if (argumentStartsWith(distributionArgumentName, "$"))
 {

  distributionArgumentName++;


  distributionArgumentIndex = pg_atoi(distributionArgumentName, 4, 0);

  if (distributionArgumentIndex < 1 || distributionArgumentIndex > numberOfArgs)
  {
   char *functionName = get_func_name(functionOid);

   ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("cannot distribute the function \"%s\" since "
           "the distribution argument is not valid",
           functionName),
       errhint("Either provide a valid function argument name "
         "or a valid \"$paramIndex\" to "
         "create_distributed_function()")));
  }





  distributionArgumentIndex -= 1;
  *distributionArgumentOid = argTypes[distributionArgumentIndex];

  ReleaseSysCache(proctup);

  Assert(*distributionArgumentOid != InvalidOid);

  return distributionArgumentIndex;
 }






 for (argIndex = 0; argIndex < numberOfArgs; ++argIndex)
 {
  char *argNameOnIndex = argNames != ((void*)0) ? argNames[argIndex] : ((void*)0);

  if (argNameOnIndex != ((void*)0) &&
   pg_strncasecmp(argNameOnIndex, distributionArgumentName, NAMEDATALEN) == 0)
  {
   distributionArgumentIndex = argIndex;

   *distributionArgumentOid = argTypes[argIndex];


   break;
  }
 }


 if (distributionArgumentIndex == -1)
 {
  char *functionName = get_func_name(functionOid);

  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("cannot distribute the function \"%s\" since the "
          "distribution argument is not valid ", functionName),
      errhint("Either provide a valid function argument name "
        "or a valid \"$paramIndex\" to "
        "create_distributed_function()")));
 }

 ReleaseSysCache(proctup);

 Assert(*distributionArgumentOid != InvalidOid);

 return distributionArgumentIndex;
}
