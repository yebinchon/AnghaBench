#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int32_t ;
struct TYPE_12__ {scalar_t__ type; int cols; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ bytes; } ;
struct TYPE_10__ {int numOfColumns; int numOfTags; int schemaSize; void* pHead; void* next; void* schema; void* pTagData; } ;
struct TYPE_8__ {int bytes; } ;
struct TYPE_9__ {int col; int pos; TYPE_1__ schema; } ;
typedef  TYPE_2__ SchemaUnit ;
typedef  TYPE_3__ STabObj ;
typedef  TYPE_4__ SSchema ;
typedef  TYPE_5__ SMeterBatchUpdateMsg ;

/* Variables and functions */
 scalar_t__ SDB_TYPE_DELETE ; 
 scalar_t__ SDB_TYPE_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 void* FUNC6 (void*,int) ; 

void *FUNC7(void *row, char *str, int size, int *ssize) {
  STabObj *             pMeter = (STabObj *)row;
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)str;

  if (FUNC4(pMeter)) {
    if (msg->type == SDB_TYPE_INSERT) {  // Insert schema
      uint32_t total_cols = pMeter->numOfColumns + pMeter->numOfTags;
      pMeter->schema = FUNC6(pMeter->schema, (total_cols + msg->cols) * sizeof(SSchema));
      pMeter->schemaSize = (total_cols + msg->cols) * sizeof(SSchema);
      pMeter->numOfTags += msg->cols;
      FUNC1(pMeter->schema + total_cols * sizeof(SSchema), msg->data, msg->cols * sizeof(SSchema));

    } else if (msg->type == SDB_TYPE_DELETE) {  // Delete schema
      // Make sure the order of tag columns
      SchemaUnit *schemaUnit = (SchemaUnit *)(msg->data);
      int         col = schemaUnit->col;
      FUNC0(col > 0 && col < pMeter->numOfTags);
      if (col < pMeter->numOfTags - 1) {
        FUNC2(pMeter->schema + sizeof(SSchema) * (pMeter->numOfColumns + col),
                pMeter->schema + sizeof(SSchema) * (pMeter->numOfColumns + col + 1),
                pMeter->schemaSize - (sizeof(SSchema) * (pMeter->numOfColumns + col + 1)));
      }
      pMeter->schemaSize -= sizeof(SSchema);
      pMeter->numOfTags--;
      pMeter->schema = FUNC6(pMeter->schema, pMeter->schemaSize);
    }

    return pMeter->pHead;

  } else if (FUNC5(pMeter)) {
    if (msg->type == SDB_TYPE_INSERT) {
      SSchema *schemas = (SSchema *)msg->data;
      int      total_size = 0;
      for (int i = 0; i < msg->cols; i++) {
        total_size += schemas[i].bytes;
      }
      pMeter->schema = FUNC6(pMeter->schema, pMeter->schemaSize + total_size);
      pMeter->pTagData = pMeter->schema;
      FUNC3(pMeter->schema + pMeter->schemaSize, 0, total_size);
      pMeter->schemaSize += total_size;
      // TODO: set the data as default value
    } else if (msg->type == SDB_TYPE_DELETE) {  // Delete values in MTABLEs
      SchemaUnit *schemaUnit = (SchemaUnit *)(msg->data);
      int32_t     pos = schemaUnit->pos;
      int32_t     bytes = schemaUnit->schema.bytes;
      FUNC0(pos + bytes <= pMeter->schemaSize);

      if (pos + bytes != pMeter->schemaSize) {
        FUNC2(pMeter->schema + pos, pMeter->schema + pos + bytes, pMeter->schemaSize - (pos + bytes));
      }

      pMeter->schemaSize -= bytes;
      pMeter->schema = FUNC6(pMeter->schema, pMeter->schemaSize);
    }

    return pMeter->next;
  }

  return NULL;
}