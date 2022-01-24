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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {void* backend_type; void* query; void* backend_xmin; void* backend_xid; void* state; void* wait_event; void* wait_event_type; void* state_change; void* query_start; void* xact_start; void* backend_start; void* client_port; void* client_hostname; int /*<<< orphan*/  client_addr; void* application_name; void* usename; void* usesysid; void* process_id; void* databaese_name; void* database_id; void* distributed_transaction_stamp; void* distributed_transaction_number; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ CitusDistStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static CitusDistStat *
FUNC8(HeapTuple result, TupleDesc rowDescriptor)
{
	CitusDistStat *citusDistStat = (CitusDistStat *) FUNC7(sizeof(CitusDistStat));
	int initiator_node_identifier = 0;

	initiator_node_identifier = FUNC1(result, rowDescriptor, 1);

	FUNC6(initiator_node_identifier, citusDistStat);

	citusDistStat->distributed_transaction_number =
		FUNC1(result, rowDescriptor, 2);
	citusDistStat->distributed_transaction_stamp =
		FUNC4(result, rowDescriptor, 3);

	/* fields from pg_stat_statement */
	citusDistStat->database_id = FUNC1(result, rowDescriptor, 4);
	citusDistStat->databaese_name = FUNC2(result, rowDescriptor, 5);
	citusDistStat->process_id = FUNC1(result, rowDescriptor, 6);
	citusDistStat->usesysid = FUNC1(result, rowDescriptor, 7);
	citusDistStat->usename = FUNC2(result, rowDescriptor, 8);
	citusDistStat->application_name =
		FUNC3(result, rowDescriptor, 9);
	citusDistStat->client_addr = FUNC0(result, rowDescriptor, 10);
	citusDistStat->client_hostname =
		FUNC3(result, rowDescriptor, 11);
	citusDistStat->client_port = FUNC1(result, rowDescriptor, 12);
	citusDistStat->backend_start =
		FUNC4(result, rowDescriptor, 13);
	citusDistStat->xact_start =
		FUNC4(result, rowDescriptor, 14);
	citusDistStat->query_start =
		FUNC4(result, rowDescriptor, 15);
	citusDistStat->state_change =
		FUNC4(result, rowDescriptor, 16);
	citusDistStat->wait_event_type =
		FUNC3(result, rowDescriptor, 17);
	citusDistStat->wait_event = FUNC3(result, rowDescriptor, 18);
	citusDistStat->state = FUNC3(result, rowDescriptor, 19);
	citusDistStat->backend_xid = FUNC5(result, rowDescriptor, 20);
	citusDistStat->backend_xmin = FUNC5(result, rowDescriptor, 21);
	citusDistStat->query = FUNC3(result, rowDescriptor, 22);
	citusDistStat->backend_type = FUNC3(result, rowDescriptor, 23);

	return citusDistStat;
}