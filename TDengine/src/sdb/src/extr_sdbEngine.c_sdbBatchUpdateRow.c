
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {char* data; int rowSize; scalar_t__ id; int delimiter; } ;
struct TYPE_12__ {int rowSize; scalar_t__ id; int offset; void* row; } ;
struct TYPE_11__ {int maxRowSize; int mutex; void* (* appTool ) (int ,void*,char*,int,int *) ;int size; int fd; scalar_t__ id; int name; } ;
typedef int TSCKSUM ;
typedef TYPE_1__ SSdbTable ;
typedef TYPE_2__ SRowMeta ;
typedef TYPE_3__ SRowHead ;


 int SDB_DELIMITER ;
 int SDB_TYPE_AFTER_BATCH_UPDATE ;
 int SDB_TYPE_BATCH_UPDATE ;
 int SDB_TYPE_BEFORE_BATCH_UPDATE ;
 int SDB_TYPE_ENCODE ;
 int SDB_TYPE_UPDATE ;
 int SEEK_SET ;
 int assert (int ) ;
 int lseek (int ,int ,int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sdbAddIntoUpdateList (TYPE_1__*,int ,void*) ;
 int sdbError (char*,int ) ;
 int sdbFinishCommit (TYPE_1__*) ;
 scalar_t__ sdbForwardDbReqToPeer (TYPE_1__*,int ,void*,int) ;
 TYPE_2__* sdbGetRowMeta (void*,void*) ;
 int sdbTrace (char*,int ) ;
 int sdbVersion ;
 void* stub1 (int ,void*,char*,int,int *) ;
 void* stub2 (int ,void*,char*,int,int *) ;
 void* stub3 (int ,void*,char*,int,int *) ;
 void* stub4 (int ,void*,char*,int,int *) ;
 int taosCalcChecksumAppend (int ,int *,scalar_t__) ;
 int tfree (TYPE_3__*) ;
 int twrite (int ,TYPE_3__*,scalar_t__) ;

int sdbBatchUpdateRow(void *handle, void *row, int rowSize) {
  SSdbTable *pTable = (SSdbTable *)handle;
  SRowMeta * pMeta = ((void*)0);
  int total_size = 0;


  if (pTable == ((void*)0) || row == ((void*)0) || rowSize <= 0) return -1;
  pMeta = sdbGetRowMeta(handle, row);
  if (pMeta == ((void*)0)) {
    sdbTrace("table: %s, record is not there, batch update failed", pTable->name);
    return -1;
  }

  void *pMetaRow = pMeta->row;
  assert(pMetaRow != ((void*)0));

  total_size = sizeof(SRowHead) + pTable->maxRowSize + sizeof(TSCKSUM);
  SRowHead *rowHead = (SRowHead *)malloc(total_size);
  if (rowHead == ((void*)0)) {
    sdbError("failed to allocate row head memory, sdb: %s", pTable->name);
    return -1;
  }

  pthread_mutex_lock(&pTable->mutex);
  if (sdbForwardDbReqToPeer(pTable, SDB_TYPE_BATCH_UPDATE, row, rowSize) == 0) {




    (*(pTable->appTool))(SDB_TYPE_BEFORE_BATCH_UPDATE, pMetaRow, ((void*)0), 0, ((void*)0));

    void *next_row = pMetaRow;
    while (next_row != ((void*)0)) {
      pTable->id++;
      sdbVersion++;

      void *last_row = next_row;
      next_row = (*(pTable->appTool))(SDB_TYPE_BATCH_UPDATE, last_row, (char *)row, rowSize, 0);
      memset(rowHead, 0, sizeof(SRowHead) + pTable->maxRowSize + sizeof(TSCKSUM));


      pMeta->id = pTable->id;
      pMeta->offset = pTable->size;


      rowHead->delimiter = SDB_DELIMITER;
      rowHead->id = pMeta->id;
      (*(pTable->appTool))(SDB_TYPE_ENCODE, last_row, rowHead->data, pTable->maxRowSize, &(rowHead->rowSize));
      taosCalcChecksumAppend(0, (uint8_t *)rowHead, sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));
      pMeta->rowSize = rowHead->rowSize;
      lseek(pTable->fd, pTable->size, SEEK_SET);
      twrite(pTable->fd, rowHead, sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));
      pTable->size += (sizeof(SRowHead) + rowHead->rowSize + sizeof(TSCKSUM));

      sdbAddIntoUpdateList(pTable, SDB_TYPE_UPDATE, last_row);

      if (next_row != ((void*)0)) {
        pMeta = sdbGetRowMeta(handle, next_row);
      }
    }

    sdbFinishCommit(pTable);

    (*(pTable->appTool))(SDB_TYPE_AFTER_BATCH_UPDATE, pMetaRow, ((void*)0), 0, ((void*)0));
  }
  pthread_mutex_unlock(&pTable->mutex);

  tfree(rowHead);

  return 0;
}
