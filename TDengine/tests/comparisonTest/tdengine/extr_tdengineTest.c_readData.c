
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_2__ {char* sql; } ;
typedef int TAOS_ROW ;
typedef int FILE ;


 TYPE_1__ arguments ;
 int exit (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getTimeStampMs () ;
 int getline (char**,size_t*,int *) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 void* taos_connect (char*,char*,char*,int *,int ) ;
 int taos_error (void*) ;
 char* taos_errstr (void*) ;
 int taos_fetch_row (void*) ;
 int taos_free_result (void*) ;
 int taos_query (void*,char*) ;
 void* taos_use_result (void*) ;

void readData() {
  printf("read data\n");
  printf("---- sql: %s\n", arguments.sql);

  void *taos = taos_connect("127.0.0.1", "root", "taosdata", ((void*)0), 0);
  if (taos == ((void*)0))
    taos_error(taos);

  FILE *fp = fopen(arguments.sql, "r");
  if (fp == ((void*)0)) {
    printf("failed to open file %s\n", arguments.sql);
    exit(1);
  }
  printf("open file %s success\n", arguments.sql);

  char *line = ((void*)0);
  size_t len = 0;
  while (!feof(fp)) {
    free(line);
    line = ((void*)0);
    len = 0;

    getline(&line, &len, fp);
    if (line == ((void*)0)) break;

    if (strlen(line) < 10) continue;

    int64_t st = getTimeStampMs();

    int code = taos_query(taos, line);
    if (code != 0) {
      taos_error(taos);
    }

    void *result = taos_use_result(taos);
    if (result == ((void*)0)) {
      printf("failed to get result, reason:%s\n", taos_errstr(taos));
      exit(1);
    }

    TAOS_ROW row;
    int rows = 0;


    while ((row = taos_fetch_row(result))) {
      rows++;



    }

    taos_free_result(result);

    int64_t elapsed = getTimeStampMs() - st;
    float seconds = (float)elapsed / 1000;
    printf("---- Spent %f seconds to query: %s", seconds, line);
  }

  fclose(fp);
}
