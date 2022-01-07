
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int ParamListInfo ;
typedef int DestReceiver ;


 int ExecuteQueryIntoDestReceiver (int *,int ,int *) ;
 int * ParseQueryString (char const*,int *,int ) ;

void
ExecuteQueryStringIntoDestReceiver(const char *queryString, ParamListInfo params,
           DestReceiver *dest)
{
 Query *query = ParseQueryString(queryString, ((void*)0), 0);

 ExecuteQueryIntoDestReceiver(query, params, dest);
}
