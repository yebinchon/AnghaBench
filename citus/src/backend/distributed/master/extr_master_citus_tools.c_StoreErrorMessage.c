
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgConn; } ;
typedef int StringInfo ;
typedef TYPE_1__ MultiConnection ;


 char* PQerrorMessage (int ) ;
 int appendStringInfo (int ,char*,char*) ;
 char* pnstrdup (char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void
StoreErrorMessage(MultiConnection *connection, StringInfo queryResultString)
{
 char *errorMessage = PQerrorMessage(connection->pgConn);
 if (errorMessage != ((void*)0))
 {
  char *firstNewlineIndex = ((void*)0);


  errorMessage = pnstrdup(errorMessage, strlen(errorMessage));

  firstNewlineIndex = strchr(errorMessage, '\n');


  if (firstNewlineIndex != ((void*)0))
  {
   *firstNewlineIndex = '\0';
  }
 }
 else
 {

  errorMessage = "An error occurred while running the query";
 }

 appendStringInfo(queryResultString, "%s", errorMessage);
}
