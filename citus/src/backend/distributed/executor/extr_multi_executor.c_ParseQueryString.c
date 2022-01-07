
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RawStmt ;
typedef int Query ;
typedef int Oid ;
typedef int List ;


 int ERROR ;
 scalar_t__ ParseTreeRawStmt (char const*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 int * pg_analyze_and_rewrite (int *,char const*,int *,int,int *) ;

Query *
ParseQueryString(const char *queryString, Oid *paramOids, int numParams)
{
 Query *query = ((void*)0);
 RawStmt *rawStmt = (RawStmt *) ParseTreeRawStmt(queryString);
 List *queryTreeList =
  pg_analyze_and_rewrite(rawStmt, queryString, paramOids, numParams, ((void*)0));

 if (list_length(queryTreeList) != 1)
 {
  ereport(ERROR, (errmsg("can only execute a single query")));
 }

 query = (Query *) linitial(queryTreeList);

 return query;
}
