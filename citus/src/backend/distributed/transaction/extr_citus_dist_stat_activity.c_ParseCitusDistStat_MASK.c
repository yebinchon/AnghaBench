#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {int distributed_transaction_number; int database_id; int process_id; int usesysid; int client_port; void* backend_type; void* query; void* backend_xmin; void* backend_xid; void* state; void* wait_event; void* wait_event_type; void* state_change; void* query_start; void* xact_start; void* backend_start; void* client_hostname; int /*<<< orphan*/  client_addr; void* application_name; void* usename; void* databaese_name; void* distributed_transaction_stamp; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ CitusDistStat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static CitusDistStat *
FUNC9(PGresult *result, int64 rowIndex)
{
	CitusDistStat *citusDistStat = (CitusDistStat *) FUNC8(sizeof(CitusDistStat));
	int initiator_node_identifier = 0;


	initiator_node_identifier =
		FUNC0(result, rowIndex, 0) ? -1 : FUNC2(result, rowIndex, 0);

	FUNC7(initiator_node_identifier, citusDistStat);

	citusDistStat->distributed_transaction_number = FUNC2(result, rowIndex, 1);
	citusDistStat->distributed_transaction_stamp =
		FUNC5(result, rowIndex, 2);

	/* fields from pg_stat_statement */
	citusDistStat->database_id = FUNC2(result, rowIndex, 3);
	citusDistStat->databaese_name = FUNC3(result, rowIndex, 4);
	citusDistStat->process_id = FUNC2(result, rowIndex, 5);
	citusDistStat->usesysid = FUNC2(result, rowIndex, 6);
	citusDistStat->usename = FUNC3(result, rowIndex, 7);
	citusDistStat->application_name = FUNC4(result, rowIndex, 8);
	citusDistStat->client_addr = FUNC1(result, rowIndex, 9);
	citusDistStat->client_hostname = FUNC4(result, rowIndex, 10);
	citusDistStat->client_port = FUNC2(result, rowIndex, 11);
	citusDistStat->backend_start = FUNC5(result, rowIndex, 12);
	citusDistStat->xact_start = FUNC5(result, rowIndex, 13);
	citusDistStat->query_start = FUNC5(result, rowIndex, 14);
	citusDistStat->state_change = FUNC5(result, rowIndex, 15);
	citusDistStat->wait_event_type = FUNC4(result, rowIndex, 16);
	citusDistStat->wait_event = FUNC4(result, rowIndex, 17);
	citusDistStat->state = FUNC4(result, rowIndex, 18);
	citusDistStat->backend_xid = FUNC6(result, rowIndex, 19);
	citusDistStat->backend_xmin = FUNC6(result, rowIndex, 20);
	citusDistStat->query = FUNC4(result, rowIndex, 21);
	citusDistStat->backend_type = FUNC4(result, rowIndex, 22);

	return citusDistStat;
}