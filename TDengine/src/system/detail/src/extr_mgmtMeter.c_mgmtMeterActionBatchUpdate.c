
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_12__ {scalar_t__ type; int cols; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ bytes; } ;
struct TYPE_10__ {int numOfColumns; int numOfTags; int schemaSize; void* pHead; void* next; void* schema; void* pTagData; } ;
struct TYPE_8__ {int bytes; } ;
struct TYPE_9__ {int col; int pos; TYPE_1__ schema; } ;
typedef TYPE_2__ SchemaUnit ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SMeterBatchUpdateMsg ;


 scalar_t__ SDB_TYPE_DELETE ;
 scalar_t__ SDB_TYPE_INSERT ;
 int assert (int) ;
 int memcpy (int ,scalar_t__,int) ;
 int memmove (void*,void*,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ mgmtIsMetric (TYPE_3__*) ;
 scalar_t__ mgmtMeterCreateFromMetric (TYPE_3__*) ;
 void* realloc (void*,int) ;

void *mgmtMeterActionBatchUpdate(void *row, char *str, int size, int *ssize) {
  STabObj * pMeter = (STabObj *)row;
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)str;

  if (mgmtIsMetric(pMeter)) {
    if (msg->type == SDB_TYPE_INSERT) {
      uint32_t total_cols = pMeter->numOfColumns + pMeter->numOfTags;
      pMeter->schema = realloc(pMeter->schema, (total_cols + msg->cols) * sizeof(SSchema));
      pMeter->schemaSize = (total_cols + msg->cols) * sizeof(SSchema);
      pMeter->numOfTags += msg->cols;
      memcpy(pMeter->schema + total_cols * sizeof(SSchema), msg->data, msg->cols * sizeof(SSchema));

    } else if (msg->type == SDB_TYPE_DELETE) {

      SchemaUnit *schemaUnit = (SchemaUnit *)(msg->data);
      int col = schemaUnit->col;
      assert(col > 0 && col < pMeter->numOfTags);
      if (col < pMeter->numOfTags - 1) {
        memmove(pMeter->schema + sizeof(SSchema) * (pMeter->numOfColumns + col),
                pMeter->schema + sizeof(SSchema) * (pMeter->numOfColumns + col + 1),
                pMeter->schemaSize - (sizeof(SSchema) * (pMeter->numOfColumns + col + 1)));
      }
      pMeter->schemaSize -= sizeof(SSchema);
      pMeter->numOfTags--;
      pMeter->schema = realloc(pMeter->schema, pMeter->schemaSize);
    }

    return pMeter->pHead;

  } else if (mgmtMeterCreateFromMetric(pMeter)) {
    if (msg->type == SDB_TYPE_INSERT) {
      SSchema *schemas = (SSchema *)msg->data;
      int total_size = 0;
      for (int i = 0; i < msg->cols; i++) {
        total_size += schemas[i].bytes;
      }
      pMeter->schema = realloc(pMeter->schema, pMeter->schemaSize + total_size);
      pMeter->pTagData = pMeter->schema;
      memset(pMeter->schema + pMeter->schemaSize, 0, total_size);
      pMeter->schemaSize += total_size;

    } else if (msg->type == SDB_TYPE_DELETE) {
      SchemaUnit *schemaUnit = (SchemaUnit *)(msg->data);
      int32_t pos = schemaUnit->pos;
      int32_t bytes = schemaUnit->schema.bytes;
      assert(pos + bytes <= pMeter->schemaSize);

      if (pos + bytes != pMeter->schemaSize) {
        memmove(pMeter->schema + pos, pMeter->schema + pos + bytes, pMeter->schemaSize - (pos + bytes));
      }

      pMeter->schemaSize -= bytes;
      pMeter->schema = realloc(pMeter->schema, pMeter->schemaSize);
    }

    return pMeter->next;
  }

  return ((void*)0);
}
