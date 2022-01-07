
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {scalar_t__ out; scalar_t__ pStmt; } ;
typedef int sqlite3 ;


 int SQLITE_DBSTATUS_CACHE_HIT ;
 int SQLITE_DBSTATUS_CACHE_MISS ;
 int SQLITE_DBSTATUS_CACHE_USED ;
 int SQLITE_DBSTATUS_CACHE_WRITE ;
 int SQLITE_DBSTATUS_LOOKASIDE_HIT ;
 int SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL ;
 int SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE ;
 int SQLITE_DBSTATUS_LOOKASIDE_USED ;
 int SQLITE_DBSTATUS_SCHEMA_USED ;
 int SQLITE_DBSTATUS_STMT_USED ;
 int SQLITE_STATUS_MALLOC_COUNT ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_MEMORY_USED ;
 int SQLITE_STATUS_PAGECACHE_OVERFLOW ;
 int SQLITE_STATUS_PAGECACHE_SIZE ;
 int SQLITE_STATUS_PARSER_STACK ;
 int SQLITE_STATUS_SCRATCH_OVERFLOW ;
 int SQLITE_STATUS_SCRATCH_SIZE ;
 int SQLITE_STMTSTATUS_AUTOINDEX ;
 int SQLITE_STMTSTATUS_FULLSCAN_STEP ;
 int SQLITE_STMTSTATUS_SORT ;
 int fprintf (scalar_t__,char*,int,...) ;
 int sqlite3_db_status (int *,int ,int*,int*,int) ;
 int sqlite3_status (int ,int*,int*,int) ;
 int sqlite3_stmt_status (scalar_t__,int ,int) ;

__attribute__((used)) static int display_stats(
  sqlite3 *db,
  struct callback_data *pArg,
  int bReset
){
  int iCur;
  int iHiwtr;

  if( pArg && pArg->out ){

    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_MEMORY_USED, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Memory Used:                         %d (max %d) bytes\n", iCur, iHiwtr);
    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_MALLOC_COUNT, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Number of Outstanding Allocations:   %d (max %d)\n", iCur, iHiwtr);






    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_PAGECACHE_OVERFLOW, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Number of Pcache Overflow Bytes:     %d (max %d) bytes\n", iCur, iHiwtr);






    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_SCRATCH_OVERFLOW, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Number of Scratch Overflow Bytes:    %d (max %d) bytes\n", iCur, iHiwtr);
    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_MALLOC_SIZE, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Largest Allocation:                  %d bytes\n", iHiwtr);
    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_PAGECACHE_SIZE, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Largest Pcache Allocation:           %d bytes\n", iHiwtr);
    iHiwtr = iCur = -1;
    sqlite3_status(SQLITE_STATUS_SCRATCH_SIZE, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Largest Scratch Allocation:          %d bytes\n", iHiwtr);





  }

  if( pArg && pArg->out && db ){
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_USED, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Lookaside Slots Used:                %d (max %d)\n", iCur, iHiwtr);
    sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_HIT, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Successful lookaside attempts:       %d\n", iHiwtr);
    sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Lookaside failures due to size:      %d\n", iHiwtr);
    sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Lookaside failures due to OOM:       %d\n", iHiwtr);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_USED, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Pager Heap Usage:                    %d bytes\n", iCur); iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_HIT, &iCur, &iHiwtr, 1);
    fprintf(pArg->out, "Page cache hits:                     %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_MISS, &iCur, &iHiwtr, 1);
    fprintf(pArg->out, "Page cache misses:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_WRITE, &iCur, &iHiwtr, 1);
    fprintf(pArg->out, "Page cache writes:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_SCHEMA_USED, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Schema Heap Usage:                   %d bytes\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_STMT_USED, &iCur, &iHiwtr, bReset);
    fprintf(pArg->out, "Statement Heap/Lookaside Usage:      %d bytes\n", iCur);
  }

  if( pArg && pArg->out && db && pArg->pStmt ){
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_FULLSCAN_STEP, bReset);
    fprintf(pArg->out, "Fullscan Steps:                      %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_SORT, bReset);
    fprintf(pArg->out, "Sort Operations:                     %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_AUTOINDEX, bReset);
    fprintf(pArg->out, "Autoindex Inserts:                   %d\n", iCur);
  }

  return 0;
}
