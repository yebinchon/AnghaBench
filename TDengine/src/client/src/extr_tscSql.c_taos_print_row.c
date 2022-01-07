
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
struct TYPE_3__ {int type; int bytes; } ;
typedef int ** TAOS_ROW ;
typedef TYPE_1__ TAOS_FIELD ;


 size_t MIN (size_t,int ) ;
 char* TSDB_DATA_NULL_STR ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ sprintf (char*,char*,...) ;
 size_t strlen (int *) ;

int taos_print_row(char *str, TAOS_ROW row, TAOS_FIELD *fields, int num_fields) {
  int len = 0;
  for (int i = 0; i < num_fields; ++i) {
    if (row[i] == ((void*)0)) {
      len += sprintf(str + len, "%s ", TSDB_DATA_NULL_STR);
      continue;
    }

    switch (fields[i].type) {
      case 128:
        len += sprintf(str + len, "%d ", *((char *)row[i]));
        break;

      case 130:
        len += sprintf(str + len, "%d ", *((short *)row[i]));
        break;

      case 132:
        len += sprintf(str + len, "%d ", *((int *)row[i]));
        break;

      case 137:
        len += sprintf(str + len, "%lld ", *((int64_t *)row[i]));
        break;

      case 133:
        len += sprintf(str + len, "%f ", *((float *)row[i]));
        break;

      case 134:
        len += sprintf(str + len, "%lf ", *((double *)row[i]));
        break;

      case 136:
      case 131: {


        size_t xlen = strlen(row[i]);
        size_t trueLen = MIN(xlen, fields[i].bytes);

        memcpy(str + len, (char*) row[i], trueLen);

        str[len + trueLen] = ' ';
        len += (trueLen + 1);
      }
        break;

      case 129:
        len += sprintf(str + len, "%lld ", *((int64_t *)row[i]));
        break;

      case 135:
        len += sprintf(str + len, "%d ", *((int8_t *)row[i]));
      default:
        break;
    }
  }

  return len;
}
