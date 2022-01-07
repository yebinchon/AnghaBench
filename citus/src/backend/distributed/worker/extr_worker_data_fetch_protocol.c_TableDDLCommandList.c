
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;
typedef int MultiConnection ;
typedef int List ;


 int CloseConnection (int *) ;
 int ExecuteOptionalRemoteCommand (int *,int ,int **) ;
 int FORCE_NEW_CONNECTION ;
 int ForgetResults (int *) ;
 int GET_TABLE_DDL_EVENTS ;
 int * GetNodeConnection (int ,char const*,int ) ;
 int * NIL ;
 int PQclear (int *) ;
 int * ReadFirstColumnAsText (int *) ;
 int appendStringInfo (TYPE_1__*,int ,char const*) ;
 TYPE_1__* makeStringInfo () ;

List *
TableDDLCommandList(const char *nodeName, uint32 nodePort, const char *tableName)
{
 List *ddlCommandList = NIL;
 StringInfo queryString = ((void*)0);
 MultiConnection *connection = ((void*)0);
 PGresult *result = ((void*)0);
 uint32 connectionFlag = FORCE_NEW_CONNECTION;

 queryString = makeStringInfo();
 appendStringInfo(queryString, GET_TABLE_DDL_EVENTS, tableName);
 connection = GetNodeConnection(connectionFlag, nodeName, nodePort);

 ExecuteOptionalRemoteCommand(connection, queryString->data, &result);
 ddlCommandList = ReadFirstColumnAsText(result);

 PQclear(result);
 ForgetResults(connection);
 CloseConnection(connection);

 return ddlCommandList;
}
