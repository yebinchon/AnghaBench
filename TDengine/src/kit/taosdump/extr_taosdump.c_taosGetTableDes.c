
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* cols; int name; } ;
struct TYPE_7__ {int bytes; } ;
struct TYPE_6__ {int length; int note; int type; int field; } ;
typedef scalar_t__* TAOS_ROW ;
typedef TYPE_2__ TAOS_FIELD ;
typedef TYPE_3__ STableDef ;


 size_t TSDB_DESCRIBE_METRIC_FIELD_INDEX ;
 size_t TSDB_DESCRIBE_METRIC_LENGTH_INDEX ;
 size_t TSDB_DESCRIBE_METRIC_NOTE_INDEX ;
 size_t TSDB_DESCRIBE_METRIC_TYPE_INDEX ;
 char* command ;
 int fprintf (int ,char*,...) ;
 int * result ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int strcpy (int ,char*) ;
 int strncpy (int ,char*,int ) ;
 int taos ;
 TYPE_2__* taos_fetch_fields (int *) ;
 scalar_t__* taos_fetch_row (int *) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int ,char*) ;
 int * taos_use_result (int ) ;

int taosGetTableDes(char *table, STableDef *tableDes) {
  TAOS_ROW row = ((void*)0);
  int count = 0;

  sprintf(command, "describe %s", table);
  if (taos_query(taos, command) != 0) {
    fprintf(stderr, "failed to run command %s\n", command);
    return -1;
  }

  result = taos_use_result(taos);
  if (result == ((void*)0)) {
    fprintf(stderr, "failed to use result\n");
    return -1;
  }

  TAOS_FIELD *fields = taos_fetch_fields(result);

  strcpy(tableDes->name, table);

  while ((row = taos_fetch_row(result)) != ((void*)0)) {
    strncpy(tableDes->cols[count].field, (char *)row[TSDB_DESCRIBE_METRIC_FIELD_INDEX],
            fields[TSDB_DESCRIBE_METRIC_FIELD_INDEX].bytes);
    strncpy(tableDes->cols[count].type, (char *)row[TSDB_DESCRIBE_METRIC_TYPE_INDEX],
            fields[TSDB_DESCRIBE_METRIC_TYPE_INDEX].bytes);
    tableDes->cols[count].length = *((int *)row[TSDB_DESCRIBE_METRIC_LENGTH_INDEX]);
    strncpy(tableDes->cols[count].note, (char *)row[TSDB_DESCRIBE_METRIC_NOTE_INDEX],
            fields[TSDB_DESCRIBE_METRIC_NOTE_INDEX].bytes);

    count++;
  }

  taos_free_result(result);
  result = ((void*)0);

  return count;
}
