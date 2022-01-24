#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_6__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; int /*<<< orphan*/  match; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  ConnectionHashKey ;
typedef  int /*<<< orphan*/  ConnectionHashEntry ;
typedef  int /*<<< orphan*/  ConnParamsHashEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_INITSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MAXSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MINSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ConnParamsHash ; 
 int /*<<< orphan*/  ConnectionContext ; 
 void* ConnectionHash ; 
 int /*<<< orphan*/  ConnectionHashCompare ; 
 int /*<<< orphan*/  ConnectionHashHash ; 
 int HASH_COMPARE ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int HASH_FUNCTION ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 void* FUNC1 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(void)
{
	HASHCTL info, connParamsInfo;
	uint32 hashFlags = 0;

	/*
	 * Create a single context for connection and transaction related memory
	 * management. Doing so, instead of allocating in TopMemoryContext, makes
	 * it easier to associate used memory.
	 */
	ConnectionContext = FUNC0(TopMemoryContext,
													  "Connection Context",
													  ALLOCSET_DEFAULT_MINSIZE,
													  ALLOCSET_DEFAULT_INITSIZE,
													  ALLOCSET_DEFAULT_MAXSIZE);

	/* create (host,port,user,database) -> [connection] hash */
	FUNC3(&info, 0, sizeof(info));
	info.keysize = sizeof(ConnectionHashKey);
	info.entrysize = sizeof(ConnectionHashEntry);
	info.hash = ConnectionHashHash;
	info.match = ConnectionHashCompare;
	info.hcxt = ConnectionContext;
	hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT | HASH_COMPARE);

	FUNC2(&connParamsInfo, &info, sizeof(HASHCTL));
	connParamsInfo.entrysize = sizeof(ConnParamsHashEntry);

	ConnectionHash = FUNC1("citus connection cache (host,port,user,database)",
								 64, &info, hashFlags);

	ConnParamsHash = FUNC1("citus connparams cache (host,port,user,database)",
								 64, &connParamsInfo, hashFlags);
}