#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  preparedName; } ;
struct TYPE_5__ {TYPE_1__ remoteTransaction; } ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* PREPARED_TRANSACTION_NAME_FORMAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(MultiConnection *connection)
{
	/* local sequence number used to distinguish different connections */
	static uint32 connectionNumber = 0;

	/* transaction identifier that is unique across processes */
	uint64 transactionNumber = FUNC0();

	/* print all numbers as unsigned to guarantee no minus symbols appear in the name */
	FUNC2(connection->remoteTransaction.preparedName, NAMEDATALEN,
			 PREPARED_TRANSACTION_NAME_FORMAT, FUNC1(), MyProcPid,
			 transactionNumber, connectionNumber++);
}