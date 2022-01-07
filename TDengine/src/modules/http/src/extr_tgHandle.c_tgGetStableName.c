
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
typedef TYPE_1__ cJSON ;
struct TYPE_9__ {int size; TYPE_2__* schemas; } ;
struct TYPE_8__ {int fieldNum; char** fields; char* tbName; int name; } ;
typedef TYPE_2__ STgSchema ;


 TYPE_1__* cJSON_GetArrayItem (TYPE_1__*,int) ;
 scalar_t__ strcasecmp (int ,char*) ;
 TYPE_3__ tgSchemas ;

char *tgGetStableName(char *stname, cJSON *fields, int fieldsSize) {
  for (int s = 0; s < tgSchemas.size; ++s) {
    STgSchema *schema = &tgSchemas.schemas[s];
    if (strcasecmp(schema->name, stname) != 0) {
      continue;
    }

    bool schemaMatched = 1;
    for (int f = 0; f < schema->fieldNum; ++f) {
      char *fieldName = schema->fields[f];
      bool fieldMatched = 0;

      for (int i = 0; i < fieldsSize; i++) {
        cJSON *field = cJSON_GetArrayItem(fields, i);
        if (strcasecmp(field->string, fieldName) == 0) {
          fieldMatched = 1;
          break;
        }
      }

      if (!fieldMatched) {
        schemaMatched = 0;
        break;
      }
    }

    if (schemaMatched) {
      return schema->tbName;
    }
  }

  return stname;
}
