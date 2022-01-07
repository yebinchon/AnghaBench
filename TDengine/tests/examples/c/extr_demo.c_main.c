
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_ROW ;
typedef int TAOS_RES ;
typedef int TAOS_FIELD ;
typedef int TAOS ;


 int exit (int) ;
 int getchar () ;
 int printf (char*,...) ;
 int sprintf (char*,char*,...) ;
 int * taos_connect (char*,char*,char*,int *,int ) ;
 char* taos_errstr (int *) ;
 int * taos_fetch_fields (int *) ;
 int taos_fetch_row (int *) ;
 int taos_field_count (int *) ;
 int taos_free_result (int *) ;
 int taos_init () ;
 int taos_print_row (char*,int ,int *,int) ;
 scalar_t__ taos_query (int *,char*) ;
 int * taos_use_result (int *) ;

int main(int argc, char *argv[]) {
  TAOS * taos;
  char qstr[1024];
  TAOS_RES *result;


  if (argc < 2) {
    printf("please input server-ip \n");
    return 0;
  }


  taos_init();

  taos = taos_connect(argv[1], "root", "taosdata", ((void*)0), 0);
  if (taos == ((void*)0)) {
    printf("failed to connect to server, reason:%s\n", taos_errstr(taos));
    exit(1);
  }
  printf("success to connect to server\n");


  taos_query(taos, "drop database demo");
  if (taos_query(taos, "create database demo") != 0) {
    printf("failed to create database, reason:%s\n", taos_errstr(taos));
    exit(1);
  }
  printf("success to create database\n");

  taos_query(taos, "use demo");


  if (taos_query(taos, "create table m1 (ts timestamp, speed int)") != 0) {
    printf("failed to create table, reason:%s\n", taos_errstr(taos));
    exit(1);
  }
  printf("success to create table\n");





  int i = 0;
  for (i = 0; i < 10; ++i) {
    sprintf(qstr, "insert into m1 values (%ld, %d)", 1546300800000 + i * 1000, i * 10);
    if (taos_query(taos, qstr)) {
      printf("failed to insert row: %i, reason:%s\n", i, taos_errstr(taos));
    }

  }
  printf("success to insert rows, total %d rows\n", i);


  sprintf(qstr, "SELECT * FROM m1");
  if (taos_query(taos, qstr) != 0) {
    printf("failed to select, reason:%s\n", taos_errstr(taos));
    exit(1);
  }

  result = taos_use_result(taos);

  if (result == ((void*)0)) {
    printf("failed to get result, reason:%s\n", taos_errstr(taos));
    exit(1);
  }

  TAOS_ROW row;
  int rows = 0;
  int num_fields = taos_field_count(taos);
  TAOS_FIELD *fields = taos_fetch_fields(result);
  char temp[256];

  printf("select * from table, result:\n");

  while ((row = taos_fetch_row(result))) {
    rows++;
    taos_print_row(temp, row, fields, num_fields);
    printf("%s\n", temp);
  }

  taos_free_result(result);
  printf("====demo end====\n\n");
  return getchar();
}
