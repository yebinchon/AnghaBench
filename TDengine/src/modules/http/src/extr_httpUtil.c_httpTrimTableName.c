
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_METER_NAME_LEN ;

void httpTrimTableName(char *name) {
  for (int i = 0; name[i] != 0; i++) {
    if (name[i] == ' ' || name[i] == ':' || name[i] == '.' || name[i] == '-' || name[i] == '/' || name[i] == '\'')
      name[i] = '_';
    if (i == TSDB_METER_NAME_LEN + 1) {
      name[i] = 0;
      break;
    }
  }
}
