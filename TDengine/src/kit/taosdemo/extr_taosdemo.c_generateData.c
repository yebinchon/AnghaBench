
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int MAX_DATA_SIZE ;
 int MAX_NUM_DATATYPE ;
 int memset (char*,int ,int ) ;
 int rand () ;
 int rand_string (char*,int) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;

void generateData(char *res, char **data_type, int num_of_cols, int64_t timestamp, int len_of_binary) {
  memset(res, 0, MAX_DATA_SIZE);
  char *pstr = res;
  pstr += sprintf(pstr, "(%ld", timestamp);
  int c = 0;

  for (; c < MAX_NUM_DATATYPE; c++) {
    if (strcasecmp(data_type[c], "") == 0) {
      break;
    }
  }

  for (int i = 0; i < num_of_cols; i++) {
    if (strcasecmp(data_type[i % c], "tinyint") == 0) {
      pstr += sprintf(pstr, ", %d", (int)(rand() % 128));
    } else if (strcasecmp(data_type[i % c], "smallint") == 0) {
      pstr += sprintf(pstr, ", %d", (int)(rand() % 32767));
    } else if (strcasecmp(data_type[i % c], "int") == 0) {
      pstr += sprintf(pstr, ", %d", (int)(rand() % 10));
    } else if (strcasecmp(data_type[i % c], "bigint") == 0) {
      pstr += sprintf(pstr, ", %ld", rand() % 2147483648);
    } else if (strcasecmp(data_type[i % c], "float") == 0) {
      pstr += sprintf(pstr, ", %10.4f", (float)(rand() / 1000));
    } else if (strcasecmp(data_type[i % c], "double") == 0) {
      double t = (double)(rand() / 1000000);
      pstr += sprintf(pstr, ", %20.8f", t);
    } else if (strcasecmp(data_type[i % c], "bool") == 0) {
      bool b = rand() & 1;
      pstr += sprintf(pstr, ", %s", b ? "true" : "false");
    } else if (strcasecmp(data_type[i % c], "binary") == 0) {
      char s[len_of_binary];
      rand_string(s, len_of_binary);
      pstr += sprintf(pstr, ", %s", s);
    }
  }

  pstr += sprintf(pstr, ")");
}
