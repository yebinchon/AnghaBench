
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct arguments {int dummy; } ;
struct TYPE_5__ {char* name; TYPE_1__* cols; } ;
struct TYPE_4__ {char* note; char* field; char* type; int length; } ;
typedef TYPE_2__ STableDef ;
typedef int FILE ;


 char* buffer ;
 int fprintf (int *,char*,char*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;

void taosDumpCreateTableClause(STableDef *tableDes, int numOfCols, struct arguments *arguments, FILE *fp) {
  char *pstr = ((void*)0);
  pstr = buffer;
  int counter = 0;
  int count_temp = 0;

  pstr += sprintf(buffer, "CREATE TABLE IF NOT EXISTS %s", tableDes->name);

  for (; counter < numOfCols; counter++) {
    if (tableDes->cols[counter].note[0] != '\0') break;

    if (counter == 0) {
      pstr += sprintf(pstr, " (%s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    } else {
      pstr += sprintf(pstr, ", %s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    }

    if (strcasecmp(tableDes->cols[counter].type, "binary") == 0 ||
        strcasecmp(tableDes->cols[counter].type, "nchar") == 0) {
      pstr += sprintf(pstr, "(%d)", tableDes->cols[counter].length);
    }
  }

  count_temp = counter;

  for (; counter < numOfCols; counter++) {
    if (counter == count_temp) {
      pstr += sprintf(pstr, ") TAGS (%s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    } else {
      pstr += sprintf(pstr, ", %s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    }

    if (strcasecmp(tableDes->cols[counter].type, "binary") == 0 ||
        strcasecmp(tableDes->cols[counter].type, "nchar") == 0) {
      pstr += sprintf(pstr, "(%d)", tableDes->cols[counter].length);
    }
  }

  pstr += sprintf(pstr, ")");

  fprintf(fp, "%s\n\n", buffer);
}
