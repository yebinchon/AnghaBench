#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {char* data; int /*<<< orphan*/  rowSize; scalar_t__ id; int /*<<< orphan*/  delimiter; } ;
struct TYPE_12__ {int /*<<< orphan*/  rowSize; scalar_t__ id; int /*<<< orphan*/  offset; void* row; } ;
struct TYPE_11__ {int maxRowSize; int /*<<< orphan*/  mutex; void* (* appTool ) (int /*<<< orphan*/ ,void*,char*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  size; int /*<<< orphan*/  fd; scalar_t__ id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  TSCKSUM ;
typedef  TYPE_1__ SSdbTable ;
typedef  TYPE_2__ SRowMeta ;
typedef  TYPE_3__ SRowHead ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_DELIMITER ; 
 int /*<<< orphan*/  SDB_TYPE_AFTER_BATCH_UPDATE ; 
 int /*<<< orphan*/  SDB_TYPE_BATCH_UPDATE ; 
 int /*<<< orphan*/  SDB_TYPE_BEFORE_BATCH_UPDATE ; 
 int /*<<< orphan*/  SDB_TYPE_ENCODE ; 
 int /*<<< orphan*/  SDB_TYPE_UPDATE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_2__* FUNC10 (void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdbVersion ; 
 void* FUNC12 (int /*<<< orphan*/ ,void*,char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ ,void*,char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ,void*,char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ ,void*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 

int FUNC19(void *handle, void *row, int rowSize) {
  SSdbTable *pTable = (SSdbTable *)handle;
  SRowMeta * pMeta = NULL;
  int        total_size = 0;
  /* char        action = SDB_TYPE_BATCH_UPDATE; */

  if (pTable == NULL || row == NULL || rowSize <= 0) return -1;
  pMeta = FUNC10(handle, row);
  if (pMeta == NULL) {
    FUNC11("table: %s, record is not there, batch update failed", pTable->name);
    return -1;
  }

  void *pMetaRow = pMeta->row;
  FUNC0(pMetaRow != NULL);

  total_size = sizeof(SRowHead) + pTable->maxRowSize + sizeof(TSCKSUM);
  SRowHead *rowHead = (SRowHead *)FUNC2(total_size);
  if (rowHead == NULL) {
    FUNC7("failed to allocate row head memory, sdb: %s", pTable->name);
    return -1;
  }

  FUNC4(&pTable->mutex);
  if (FUNC9(pTable, SDB_TYPE_BATCH_UPDATE, row, rowSize) == 0) {
    /* // write action */
    /* write(pTable->fd, &action, sizeof(action)); */
    /* pTable->size += sizeof(action); */

    (*(pTable->appTool))(SDB_TYPE_BEFORE_BATCH_UPDATE, pMetaRow, NULL, 0, NULL);

    void *next_row = pMetaRow;
    while (next_row != NULL) {
      pTable->id++;
      sdbVersion++;

      void *last_row = next_row;
      next_row = (*(pTable->appTool))(SDB_TYPE_BATCH_UPDATE, last_row, (char *)row, rowSize, 0);
      FUNC3(rowHead, 0, sizeof(SRowHead) + pTable->maxRowSize + sizeof(TSCKSUM));

      // update in current layer
      pMeta->id = pTable->id;
      pMeta->offset = pTable->size;

      // write to disk
      rowHead->delimiter = SDB_DELIMITER;
      rowHead->id = pMeta->id;
      (*(pTable->appTool))(SDB_TYPE_ENCODE, last_row, rowHead->data, pTable->maxRowSize, &(rowHead->rowSize));
      FUNC16(0, (uint8_t *)rowHead, sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));
      pMeta->rowSize = rowHead->rowSize;
      FUNC1(pTable->fd, pTable->size, SEEK_SET);
      FUNC18(pTable->fd, rowHead, sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));
      pTable->size += (sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));

      FUNC6(pTable, SDB_TYPE_UPDATE, last_row);

      if (next_row != NULL) {
        pMeta = FUNC10(handle, next_row);
      }
    }

    FUNC8(pTable);

    (*(pTable->appTool))(SDB_TYPE_AFTER_BATCH_UPDATE, pMetaRow, NULL, 0, NULL);
  }
  FUNC5(&pTable->mutex);

  FUNC17(rowHead);

  return 0;
}