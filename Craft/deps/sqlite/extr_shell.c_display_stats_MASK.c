#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct callback_data {scalar_t__ out; scalar_t__ pStmt; } ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_HIT ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_MISS ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_WRITE ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_HIT ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_SCHEMA_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_STMT_USED ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_COUNT ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PARSER_STACK ; 
 int /*<<< orphan*/  SQLITE_STATUS_SCRATCH_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_SCRATCH_SIZE ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_AUTOINDEX ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_FULLSCAN_STEP ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_SORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(
  sqlite3 *db,                /* Database to query */
  struct callback_data *pArg, /* Pointer to struct callback_data */
  int bReset                  /* True to reset the stats */
){
  int iCur;
  int iHiwtr;

  if( pArg && pArg->out ){
    
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_MEMORY_USED, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Memory Used:                         %d (max %d) bytes\n", iCur, iHiwtr);
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_MALLOC_COUNT, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Number of Outstanding Allocations:   %d (max %d)\n", iCur, iHiwtr);
/*
** Not currently used by the CLI.
**    iHiwtr = iCur = -1;
**    sqlite3_status(SQLITE_STATUS_PAGECACHE_USED, &iCur, &iHiwtr, bReset);
**    fprintf(pArg->out, "Number of Pcache Pages Used:         %d (max %d) pages\n", iCur, iHiwtr);
*/
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_PAGECACHE_OVERFLOW, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Number of Pcache Overflow Bytes:     %d (max %d) bytes\n", iCur, iHiwtr);
/*
** Not currently used by the CLI.
**    iHiwtr = iCur = -1;
**    sqlite3_status(SQLITE_STATUS_SCRATCH_USED, &iCur, &iHiwtr, bReset);
**    fprintf(pArg->out, "Number of Scratch Allocations Used:  %d (max %d)\n", iCur, iHiwtr);
*/
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_SCRATCH_OVERFLOW, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Number of Scratch Overflow Bytes:    %d (max %d) bytes\n", iCur, iHiwtr);
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_MALLOC_SIZE, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Largest Allocation:                  %d bytes\n", iHiwtr);
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_PAGECACHE_SIZE, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Largest Pcache Allocation:           %d bytes\n", iHiwtr);
    iHiwtr = iCur = -1;
    FUNC2(SQLITE_STATUS_SCRATCH_SIZE, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Largest Scratch Allocation:          %d bytes\n", iHiwtr);
#ifdef YYTRACKMAXSTACKDEPTH
    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_PARSER_STACK, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Deepest Parser Stack:                %d (max %d)\n", iCur, iHiwtr);
#endif
  }

  if( pArg && pArg->out && db ){
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_LOOKASIDE_USED, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Lookaside Slots Used:                %d (max %d)\n", iCur, iHiwtr);
    FUNC1(db, SQLITE_DBSTATUS_LOOKASIDE_HIT, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Successful lookaside attempts:       %d\n", iHiwtr);
    FUNC1(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Lookaside failures due to size:      %d\n", iHiwtr);
    FUNC1(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Lookaside failures due to OOM:       %d\n", iHiwtr);
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_CACHE_USED, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Pager Heap Usage:                    %d bytes\n", iCur);    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_CACHE_HIT, &iCur, &iHiwtr, 1);
    FUNC0(pArg->out, "Page cache hits:                     %d\n", iCur);
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_CACHE_MISS, &iCur, &iHiwtr, 1);
    FUNC0(pArg->out, "Page cache misses:                   %d\n", iCur); 
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_CACHE_WRITE, &iCur, &iHiwtr, 1);
    FUNC0(pArg->out, "Page cache writes:                   %d\n", iCur); 
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_SCHEMA_USED, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Schema Heap Usage:                   %d bytes\n", iCur); 
    iHiwtr = iCur = -1;
    FUNC1(db, SQLITE_DBSTATUS_STMT_USED, &iCur, &iHiwtr, bReset);
    FUNC0(pArg->out, "Statement Heap/Lookaside Usage:      %d bytes\n", iCur); 
  }

  if( pArg && pArg->out && db && pArg->pStmt ){
    iCur = FUNC3(pArg->pStmt, SQLITE_STMTSTATUS_FULLSCAN_STEP, bReset);
    FUNC0(pArg->out, "Fullscan Steps:                      %d\n", iCur);
    iCur = FUNC3(pArg->pStmt, SQLITE_STMTSTATUS_SORT, bReset);
    FUNC0(pArg->out, "Sort Operations:                     %d\n", iCur);
    iCur = FUNC3(pArg->pStmt, SQLITE_STMTSTATUS_AUTOINDEX, bReset);
    FUNC0(pArg->out, "Autoindex Inserts:                   %d\n", iCur);
  }

  return 0;
}