
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int id; char* name; int timeStamp; int rowsInserted; int rowsRetrieved; int * taos; } ;
typedef int TAOS ;
typedef TYPE_1__ STable ;


 void* atoi (char*) ;
 int exit (int ) ;
 int free (TYPE_1__*) ;
 int getchar () ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ malloc (size_t) ;
 int memset (TYPE_1__*,int ,size_t) ;
 int numOfTables ;
 void* points ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,...) ;
 int st ;
 int strcpy (char*,char*) ;
 scalar_t__ tablesProcessed ;
 int taos_close (int *) ;
 int * taos_connect (char*,char*,char*,int *,int ) ;
 int taos_error (int *) ;
 int taos_init () ;
 int taos_insert_call_back ;
 scalar_t__ taos_query (int *,char*) ;
 int taos_query_a (int *,char*,int ,void*) ;
 int taos_select_call_back ;

int main(int argc, char *argv[])
{
  TAOS *taos;
  struct timeval systemTime;
  int i;
  char sql[1024] = { 0 };
  char prefix[20] = { 0 };
  char db[128] = { 0 };
  STable *tableList;

  if (argc != 5) {
    printf("usage: %s server-ip dbname rowsPerTable numOfTables\n", argv[0]);
    exit(0);
  }


  if (argc >= 3) strcpy(db, argv[2]);
  if (argc >= 4) points = atoi(argv[3]);
  if (argc >= 5) numOfTables = atoi(argv[4]);

  size_t size = sizeof(STable) * (size_t)numOfTables;
  tableList = (STable *)malloc(size);
  memset(tableList, 0, size);

  taos_init();

  taos = taos_connect(argv[1], "root", "taosdata", ((void*)0), 0);
  if (taos == ((void*)0))
    taos_error(taos);

  printf("success to connect to server\n");

  sprintf(sql, "drop database %s", db);
  taos_query(taos, sql);

  sprintf(sql, "create database %s", db);
  if (taos_query(taos, sql) != 0)
    taos_error(taos);

  sprintf(sql, "use %s", db);
  if (taos_query(taos, sql) != 0)
    taos_error(taos);

  strcpy(prefix, "asytbl_");
  for (i = 0; i < numOfTables; ++i) {
    tableList[i].id = i;
    tableList[i].taos = taos;
    sprintf(tableList[i].name, "%s%d", prefix, i);
    sprintf(sql, "create table %s%d (ts timestamp, volume bigint)", prefix, i);
    if (taos_query(taos, sql) != 0)
      taos_error(taos);
  }

  gettimeofday(&systemTime, ((void*)0));
  for (i = 0; i < numOfTables; ++i)
    tableList[i].timeStamp = (time_t)(systemTime.tv_sec) * 1000 + systemTime.tv_usec / 1000;

  printf("success to create tables, press any key to insert\n");
  getchar();

  printf("start to insert...\n");
  gettimeofday(&systemTime, ((void*)0));
  st = systemTime.tv_sec * 1000000 + systemTime.tv_usec;

  for (i = 0; i<numOfTables; ++i) {

    sprintf(sql, "insert into %s values(%ld, 0)", tableList[i].name, 1546300800000 + i);
    taos_query_a(taos, sql, taos_insert_call_back, (void *)(tableList + i));
  }

  printf("once insert finished, presse any key to query\n");
  getchar();

  printf("start to query...\n");
  gettimeofday(&systemTime, ((void*)0));
  st = systemTime.tv_sec * 1000000 + systemTime.tv_usec;
  tablesProcessed = 0;

  for (i = 0; i < numOfTables; ++i) {

    sprintf(sql, "select * from %s", tableList[i].name);
    taos_query_a(taos, sql, taos_select_call_back, (void *)(tableList + i));
  }

  printf("\nonce finished, press any key to exit\n");
  getchar();

  for (i = 0; i<numOfTables; ++i) {
    printf("%s inserted:%d retrieved:%d\n", tableList[i].name, tableList[i].rowsInserted, tableList[i].rowsRetrieved);
  }

  getchar();

  taos_close(taos);
  free(tableList);

  printf("==== async demo end====\n");
  printf("\n");
  return 0;
}
