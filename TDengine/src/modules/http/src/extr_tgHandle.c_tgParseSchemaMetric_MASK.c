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
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/ * valuestring; } ;
typedef  TYPE_1__ cJSON ;
struct TYPE_13__ {int /*<<< orphan*/  size; TYPE_2__* schemas; } ;
struct TYPE_12__ {int fieldNum; void** fields; void* tbName; void* name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ STgSchema ;

/* Variables and functions */
 int TSDB_MAX_COLUMNS ; 
 int TSDB_METER_NAME_LEN ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ cJSON_String ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_3__ tgSchemas ; 

void FUNC7(cJSON *metric) {
  STgSchema  schema = {0};
  bool       parsedOk = true;

  // name
  cJSON *name = FUNC2(metric, "name");
  if (name == NULL) {
    parsedOk = false;
    goto ParseEnd;
  }
  if (name->type != cJSON_String) {
    parsedOk = false;
    goto ParseEnd;
  }
  if (name->valuestring == NULL) {
    parsedOk = false;
    goto ParseEnd;
  }
  int nameLen = (int)FUNC5(name->valuestring);
  if (nameLen == 0) {
    parsedOk = false;
    goto ParseEnd;
  }

  schema.name = FUNC3(nameLen + 1, 1);
  FUNC4(schema.name, name->valuestring);

  // tbname
  cJSON *tbname = FUNC2(metric, "tbname");
  if (tbname == NULL) {
    parsedOk = false;
    goto ParseEnd;
  }
  if (tbname->type != cJSON_String) {
    parsedOk = false;
    goto ParseEnd;
  }
  if (tbname->valuestring == NULL) {
    parsedOk = false;
    goto ParseEnd;
  }
  int tbnameLen = (int)FUNC5(tbname->valuestring);
  if (tbnameLen == 0) {
    parsedOk = false;
    goto ParseEnd;
  }

  schema.tbName = FUNC3(tbnameLen + 1, 1);
  FUNC4(schema.tbName, tbname->valuestring);

    // fields
  cJSON *fields = FUNC2(metric, "fields");
  if (fields == NULL) {
    goto ParseEnd;
  }
  int fieldSize = FUNC1(fields);
  if (fieldSize <= 0 || fieldSize > TSDB_MAX_COLUMNS) {
    goto ParseEnd;
  }

  if (fieldSize > 0) {
    schema.fields = FUNC3(sizeof(STgSchema), (size_t)fieldSize);
    schema.fieldNum = fieldSize;
    for (int i = 0; i < fieldSize; i++) {
      cJSON *field = FUNC0(fields, i);
      if (field == NULL) {
        parsedOk = false;
        goto ParseEnd;
      }
      if (field->valuestring == NULL) {
        parsedOk = false;
        goto ParseEnd;
      }
      int nameLen = (int)FUNC5(field->valuestring);
      if (nameLen == 0 || nameLen > TSDB_METER_NAME_LEN) {
        parsedOk = false;
        goto ParseEnd;
      }
      schema.fields[i] = FUNC3(nameLen + 1, 1);
      FUNC4(schema.fields[i], field->valuestring);
    }
  }

ParseEnd:
  if (parsedOk) {
    tgSchemas.schemas[tgSchemas.size++] = schema;
  } else {
    FUNC6(&schema);
  }
}