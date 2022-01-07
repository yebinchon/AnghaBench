
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; int * valuestring; } ;
typedef TYPE_1__ cJSON ;
struct TYPE_13__ {int size; TYPE_2__* schemas; } ;
struct TYPE_12__ {int fieldNum; void** fields; void* tbName; void* name; int member_0; } ;
typedef TYPE_2__ STgSchema ;


 int TSDB_MAX_COLUMNS ;
 int TSDB_METER_NAME_LEN ;
 TYPE_1__* cJSON_GetArrayItem (TYPE_1__*,int) ;
 int cJSON_GetArraySize (TYPE_1__*) ;
 TYPE_1__* cJSON_GetObjectItem (TYPE_1__*,char*) ;
 scalar_t__ cJSON_String ;
 void* calloc (int,int) ;
 int strcpy (void*,int *) ;
 scalar_t__ strlen (int *) ;
 int tgFreeSchema (TYPE_2__*) ;
 TYPE_3__ tgSchemas ;

void tgParseSchemaMetric(cJSON *metric) {
  STgSchema schema = {0};
  bool parsedOk = 1;


  cJSON *name = cJSON_GetObjectItem(metric, "name");
  if (name == ((void*)0)) {
    parsedOk = 0;
    goto ParseEnd;
  }
  if (name->type != cJSON_String) {
    parsedOk = 0;
    goto ParseEnd;
  }
  if (name->valuestring == ((void*)0)) {
    parsedOk = 0;
    goto ParseEnd;
  }
  int nameLen = (int)strlen(name->valuestring);
  if (nameLen == 0) {
    parsedOk = 0;
    goto ParseEnd;
  }

  schema.name = calloc(nameLen + 1, 1);
  strcpy(schema.name, name->valuestring);


  cJSON *tbname = cJSON_GetObjectItem(metric, "tbname");
  if (tbname == ((void*)0)) {
    parsedOk = 0;
    goto ParseEnd;
  }
  if (tbname->type != cJSON_String) {
    parsedOk = 0;
    goto ParseEnd;
  }
  if (tbname->valuestring == ((void*)0)) {
    parsedOk = 0;
    goto ParseEnd;
  }
  int tbnameLen = (int)strlen(tbname->valuestring);
  if (tbnameLen == 0) {
    parsedOk = 0;
    goto ParseEnd;
  }

  schema.tbName = calloc(tbnameLen + 1, 1);
  strcpy(schema.tbName, tbname->valuestring);


  cJSON *fields = cJSON_GetObjectItem(metric, "fields");
  if (fields == ((void*)0)) {
    goto ParseEnd;
  }
  int fieldSize = cJSON_GetArraySize(fields);
  if (fieldSize <= 0 || fieldSize > TSDB_MAX_COLUMNS) {
    goto ParseEnd;
  }

  if (fieldSize > 0) {
    schema.fields = calloc(sizeof(STgSchema), (size_t)fieldSize);
    schema.fieldNum = fieldSize;
    for (int i = 0; i < fieldSize; i++) {
      cJSON *field = cJSON_GetArrayItem(fields, i);
      if (field == ((void*)0)) {
        parsedOk = 0;
        goto ParseEnd;
      }
      if (field->valuestring == ((void*)0)) {
        parsedOk = 0;
        goto ParseEnd;
      }
      int nameLen = (int)strlen(field->valuestring);
      if (nameLen == 0 || nameLen > TSDB_METER_NAME_LEN) {
        parsedOk = 0;
        goto ParseEnd;
      }
      schema.fields[i] = calloc(nameLen + 1, 1);
      strcpy(schema.fields[i], field->valuestring);
    }
  }

ParseEnd:
  if (parsedOk) {
    tgSchemas.schemas[tgSchemas.size++] = schema;
  } else {
    tgFreeSchema(&schema);
  }
}
