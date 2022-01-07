
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct arguments {int data_batch; int end_time; int start_time; scalar_t__ schemaonly; } ;
typedef int int64_t ;
struct TYPE_3__ {int type; int bytes; } ;
typedef int ** TAOS_ROW ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int FILE ;


 int COMMAND_SIZE ;
 int assert (int) ;
 char* buffer ;
 char* command ;
 int converStringToReadable (char*,int ,char*,int ) ;
 int convertNCharToReadable (char*,int ,char*,int ) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int * result ;
 int sprintf (char*,char*,...) ;
 int * stderr ;
 char* stpcpy (char*,char*) ;
 int taos ;
 char* taos_errstr (int ) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int ** taos_fetch_row (int *) ;
 int taos_field_count (int ) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int ,char*) ;
 int * taos_use_result (int ) ;

int taosDumpTableData(FILE *fp, char *tbname, struct arguments *arguments) {

  int count = 0;
  char *pstr = ((void*)0);
  TAOS_ROW row = ((void*)0);
  int numFields = 0;
  char *tbuf = ((void*)0);

  if (arguments->schemaonly) return 0;

  sprintf(command, "select * from %s where _c0 >= %ld and _c0 <= %ld order by _c0 asc", tbname, arguments->start_time,
          arguments->end_time);
  if (taos_query(taos, command) != 0) {
    fprintf(stderr, "failed to run command %s, reason: %s\n", command, taos_errstr(taos));
    return -1;
  }

  result = taos_use_result(taos);
  if (result == ((void*)0)) {
    fprintf(stderr, "failed to use result\n");
    return -1;
  }

  numFields = taos_field_count(taos);
  assert(numFields > 0);
  TAOS_FIELD *fields = taos_fetch_fields(result);
  tbuf = (char *)malloc(COMMAND_SIZE);
  if (tbuf == ((void*)0)) {
    fprintf(stderr, "No enough memory\n");
    return -1;
  }

  count = 0;
  while ((row = taos_fetch_row(result)) != ((void*)0)) {
    pstr = buffer;

    if (count == 0) {
      pstr += sprintf(pstr, "INSERT INTO %s VALUES (", tbname);
    } else {
      pstr += sprintf(pstr, "(");
    }

    for (int col = 0; col < numFields; col++) {
      if (col != 0) pstr += sprintf(pstr, ", ");

      if (row[col] == ((void*)0)) {
        pstr += sprintf(pstr, "NULL");
        continue;
      }

      switch (fields[col].type) {
        case 135:
          pstr += sprintf(pstr, "%d", ((((int)(*((char *)row[col]))) == 1) ? 1 : 0));
          break;
        case 128:
          pstr += sprintf(pstr, "%d", (int)(*((char *)row[col])));
          break;
        case 130:
          pstr += sprintf(pstr, "%d", (int)(*((short *)row[col])));
          break;
        case 132:
          pstr += sprintf(pstr, "%d", *((int *)row[col]));
          break;
        case 137:
          pstr += sprintf(pstr, "%ld", *((int64_t *)row[col]));
          break;
        case 133:
          pstr += sprintf(pstr, "%f", *((float *)row[col]));
          break;
        case 134:
          pstr += sprintf(pstr, "%f", *((double *)row[col]));
          break;
        case 136:
          *(pstr++) = '\'';
          converStringToReadable((char *)row[col], fields[col].bytes, tbuf, COMMAND_SIZE);
          pstr = stpcpy(pstr, tbuf);
          *(pstr++) = '\'';
          break;
        case 131:
          convertNCharToReadable((char *)row[col], fields[col].bytes, tbuf, COMMAND_SIZE);
          pstr += sprintf(pstr, "\'%s\'", tbuf);
          break;
        case 129:
          pstr += sprintf(pstr, "%ld", *(int64_t *)row[col]);
          break;
        default:
          break;
      }
    }
    pstr += sprintf(pstr, ")");

    count++;
    fprintf(fp, "%s", buffer);

    if (count >= arguments->data_batch) {
      fprintf(fp, "\n");
      count = 0;
    } else {
      fprintf(fp, "\\\n");
    }
  }

  fprintf(fp, "\n");

  if (tbuf) free(tbuf);
  taos_free_result(result);
  result = ((void*)0);
  return 0;
}
