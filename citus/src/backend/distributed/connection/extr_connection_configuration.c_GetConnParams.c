
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int maxSize; size_t size; char** keywords; char** values; } ;
struct TYPE_4__ {char* hostname; char* database; char* user; int port; } ;
typedef int MemoryContext ;
typedef size_t Index ;
typedef TYPE_1__ ConnectionHashKey ;


 TYPE_3__ ConnParams ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 char* GetDatabaseEncodingName () ;
 char** MemoryContextAllocZero (int ,int) ;
 char* MemoryContextStrdup (int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 size_t lengthof (char const**) ;
 int pg_ltoa (int ,char*) ;

void
GetConnParams(ConnectionHashKey *key, char ***keywords, char ***values,
     Index *runtimeParamStart, MemoryContext context)
{





 char nodePortString[12] = "";
 const char *runtimeKeywords[] = {
  "host",
  "port",
  "dbname",
  "user",
  "client_encoding"
 };
 const char *runtimeValues[] = {
  key->hostname,
  nodePortString,
  key->database,
  key->user,
  GetDatabaseEncodingName()
 };
 char **connKeywords = *keywords = MemoryContextAllocZero(context, ConnParams.maxSize *
                sizeof(char *));
 char **connValues = *values = MemoryContextAllocZero(context, ConnParams.maxSize *
               sizeof(char *));


 Index authParamsIdx = ConnParams.size + lengthof(runtimeKeywords);

 Index paramIndex = 0;
 Index runtimeParamIndex = 0;

 if (ConnParams.size + lengthof(runtimeKeywords) >= ConnParams.maxSize)
 {

  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("too many connParams entries")));
 }

 pg_ltoa(key->port, nodePortString);


 for (paramIndex = 0; paramIndex < ConnParams.size; paramIndex++)
 {

  connKeywords[paramIndex] = ConnParams.keywords[paramIndex];
  connValues[paramIndex] = ConnParams.values[paramIndex];
 }






 *runtimeParamStart = ConnParams.size;


 for (runtimeParamIndex = 0;
   runtimeParamIndex < lengthof(runtimeKeywords);
   runtimeParamIndex++)
 {

  connKeywords[ConnParams.size + runtimeParamIndex] =
   MemoryContextStrdup(context, runtimeKeywords[runtimeParamIndex]);
  connValues[ConnParams.size + runtimeParamIndex] =
   MemoryContextStrdup(context, runtimeValues[runtimeParamIndex]);
 }


 connKeywords[authParamsIdx] = connValues[authParamsIdx] = ((void*)0);
}
