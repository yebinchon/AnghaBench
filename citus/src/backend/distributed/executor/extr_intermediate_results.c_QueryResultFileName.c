
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 char* IntermediateResultsDirectory () ;
 int appendStringInfo (TYPE_1__*,char*,char const*,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static char *
QueryResultFileName(const char *resultId)
{
 StringInfo resultFileName = makeStringInfo();
 const char *resultDirectory = IntermediateResultsDirectory();
 char *checkChar = (char *) resultId;

 for (; *checkChar; checkChar++)
 {
  if (!((*checkChar >= 'a' && *checkChar <= 'z') ||
     (*checkChar >= 'A' && *checkChar <= 'Z') ||
     (*checkChar >= '0' && *checkChar <= '9') ||
     (*checkChar == '_') || (*checkChar == '-')))
  {
   ereport(ERROR, (errcode(ERRCODE_INVALID_NAME),
       errmsg("result key \"%s\" contains invalid character",
           resultId),
       errhint("Result keys may only contain letters, numbers, "
         "underscores and hyphens.")));
  }
 }

 appendStringInfo(resultFileName, "%s/%s.data",
      resultDirectory, resultId);

 return resultFileName->data;
}
