
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateIntermediateResultsDirectory () ;
 char* QueryResultFileName (char const*) ;
 int RedirectCopyDataToRegularFile (char const*) ;

void
ReceiveQueryResultViaCopy(const char *resultId)
{
 const char *resultFileName = ((void*)0);

 CreateIntermediateResultsDirectory();

 resultFileName = QueryResultFileName(resultId);

 RedirectCopyDataToRegularFile(resultFileName);
}
