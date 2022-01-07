
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; scalar_t__ summary; scalar_t__ timing; scalar_t__ buffers; scalar_t__ costs; scalar_t__ verbose; scalar_t__ analyze; } ;
typedef int StringInfo ;
typedef TYPE_1__ ExplainState ;





 int appendStringInfo (int ,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int makeStringInfo () ;

__attribute__((used)) static StringInfo
BuildRemoteExplainQuery(char *queryString, ExplainState *es)
{
 StringInfo explainQuery = makeStringInfo();
 char *formatStr = ((void*)0);

 switch (es->format)
 {
  case 129:
  {
   formatStr = "XML";
   break;
  }

  case 130:
  {
   formatStr = "JSON";
   break;
  }

  case 128:
  {
   formatStr = "YAML";
   break;
  }

  default:
  {
   formatStr = "TEXT";
   break;
  }
 }

 appendStringInfo(explainQuery,
      "EXPLAIN (ANALYZE %s, VERBOSE %s, "
      "COSTS %s, BUFFERS %s, TIMING %s, SUMMARY %s, "
      "FORMAT %s) %s",
      es->analyze ? "TRUE" : "FALSE",
      es->verbose ? "TRUE" : "FALSE",
      es->costs ? "TRUE" : "FALSE",
      es->buffers ? "TRUE" : "FALSE",
      es->timing ? "TRUE" : "FALSE",
      es->summary ? "TRUE" : "FALSE",
      formatStr,
      queryString);

 return explainQuery;
}
