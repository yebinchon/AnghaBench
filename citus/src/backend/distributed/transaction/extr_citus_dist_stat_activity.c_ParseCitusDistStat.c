
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int distributed_transaction_number; int database_id; int process_id; int usesysid; int client_port; void* backend_type; void* query; void* backend_xmin; void* backend_xid; void* state; void* wait_event; void* wait_event_type; void* state_change; void* query_start; void* xact_start; void* backend_start; void* client_hostname; int client_addr; void* application_name; void* usename; void* databaese_name; void* distributed_transaction_stamp; } ;
typedef int PGresult ;
typedef TYPE_1__ CitusDistStat ;


 scalar_t__ PQgetisnull (int *,int ,int ) ;
 int ParseInetField (int *,int ,int) ;
 int ParseIntField (int *,int ,int) ;
 void* ParseNameField (int *,int ,int) ;
 void* ParseTextField (int *,int ,int) ;
 void* ParseTimestampTzField (int *,int ,int) ;
 void* ParseXIDField (int *,int ,int) ;
 int ReplaceInitiatorNodeIdentifier (int,TYPE_1__*) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static CitusDistStat *
ParseCitusDistStat(PGresult *result, int64 rowIndex)
{
 CitusDistStat *citusDistStat = (CitusDistStat *) palloc0(sizeof(CitusDistStat));
 int initiator_node_identifier = 0;


 initiator_node_identifier =
  PQgetisnull(result, rowIndex, 0) ? -1 : ParseIntField(result, rowIndex, 0);

 ReplaceInitiatorNodeIdentifier(initiator_node_identifier, citusDistStat);

 citusDistStat->distributed_transaction_number = ParseIntField(result, rowIndex, 1);
 citusDistStat->distributed_transaction_stamp =
  ParseTimestampTzField(result, rowIndex, 2);


 citusDistStat->database_id = ParseIntField(result, rowIndex, 3);
 citusDistStat->databaese_name = ParseNameField(result, rowIndex, 4);
 citusDistStat->process_id = ParseIntField(result, rowIndex, 5);
 citusDistStat->usesysid = ParseIntField(result, rowIndex, 6);
 citusDistStat->usename = ParseNameField(result, rowIndex, 7);
 citusDistStat->application_name = ParseTextField(result, rowIndex, 8);
 citusDistStat->client_addr = ParseInetField(result, rowIndex, 9);
 citusDistStat->client_hostname = ParseTextField(result, rowIndex, 10);
 citusDistStat->client_port = ParseIntField(result, rowIndex, 11);
 citusDistStat->backend_start = ParseTimestampTzField(result, rowIndex, 12);
 citusDistStat->xact_start = ParseTimestampTzField(result, rowIndex, 13);
 citusDistStat->query_start = ParseTimestampTzField(result, rowIndex, 14);
 citusDistStat->state_change = ParseTimestampTzField(result, rowIndex, 15);
 citusDistStat->wait_event_type = ParseTextField(result, rowIndex, 16);
 citusDistStat->wait_event = ParseTextField(result, rowIndex, 17);
 citusDistStat->state = ParseTextField(result, rowIndex, 18);
 citusDistStat->backend_xid = ParseXIDField(result, rowIndex, 19);
 citusDistStat->backend_xmin = ParseXIDField(result, rowIndex, 20);
 citusDistStat->query = ParseTextField(result, rowIndex, 21);
 citusDistStat->backend_type = ParseTextField(result, rowIndex, 22);

 return citusDistStat;
}
