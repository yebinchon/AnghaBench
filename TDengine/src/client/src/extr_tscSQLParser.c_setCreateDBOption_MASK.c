#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int numOfBlocksPerTable; int compressionLevel; int commitLog; int commitTime; int tablesPerVnode; int numOfAvgCacheBlocks; int cacheBlockSize; int rowPerFileBlock; int daysPerFile; int replica; } ;
struct TYPE_6__ {int fraction; } ;
struct TYPE_7__ {int compression; int commitLog; int replications; void* daysPerFile; void* rowsInFileBlock; void* cacheBlockSize; TYPE_1__ cacheNumOfBlocks; void* maxSessions; void* commitTime; int /*<<< orphan*/  blocksPerMeter; void* daysToKeep2; void* daysToKeep1; void* daysToKeep; int /*<<< orphan*/  precision; } ;
typedef  TYPE_2__ SCreateDbMsg ;
typedef  TYPE_3__ SCreateDBInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_TIME_PRECISION_MILLI ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(SCreateDbMsg* pMsg, SCreateDBInfo* pCreateDb) {
  pMsg->precision = TSDB_TIME_PRECISION_MILLI;  // millisecond by default

  pMsg->daysToKeep = FUNC0(-1);
  pMsg->daysToKeep1 = FUNC0(-1);
  pMsg->daysToKeep2 = FUNC0(-1);

  pMsg->blocksPerMeter = (pCreateDb->numOfBlocksPerTable == 0) ? FUNC1(-1) : FUNC1(pCreateDb->numOfBlocksPerTable);
  pMsg->compression = (pCreateDb->compressionLevel == 0) ? -1 : pCreateDb->compressionLevel;

  pMsg->commitLog = (pCreateDb->commitLog == 0) ? -1 : pCreateDb->commitLog;
  pMsg->commitTime = (pCreateDb->commitTime == 0) ? FUNC0(-1) : FUNC0(pCreateDb->commitTime);
  pMsg->maxSessions = (pCreateDb->tablesPerVnode == 0) ? FUNC0(-1) : FUNC0(pCreateDb->tablesPerVnode);
  pMsg->cacheNumOfBlocks.fraction = (pCreateDb->numOfAvgCacheBlocks == 0) ? -1 : pCreateDb->numOfAvgCacheBlocks;
  pMsg->cacheBlockSize = (pCreateDb->cacheBlockSize == 0) ? FUNC0(-1) : FUNC0(pCreateDb->cacheBlockSize);
  pMsg->rowsInFileBlock = (pCreateDb->rowPerFileBlock == 0) ? FUNC0(-1) : FUNC0(pCreateDb->rowPerFileBlock);
  pMsg->daysPerFile = (pCreateDb->daysPerFile == 0) ? FUNC0(-1) : FUNC0(pCreateDb->daysPerFile);
  pMsg->replications = (pCreateDb->replica == 0) ? -1 : pCreateDb->replica;
}