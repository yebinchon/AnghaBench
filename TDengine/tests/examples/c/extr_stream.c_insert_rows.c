
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* server_ip; char* db_name; char* tbl_name; } ;
typedef TYPE_1__ param ;
typedef int TAOS ;


 int exit (int) ;
 scalar_t__ g_thread_exit_flag ;
 int printf (char*,...) ;
 int sleep (int) ;
 int sprintf (char*,char*,char*,...) ;
 int taos_close (int *) ;
 int * taos_connect (char*,char*,char*,int *,int ) ;
 char* taos_errstr (int *) ;
 scalar_t__ taos_query (int *,char*) ;

void* insert_rows(void *sarg)
{
  TAOS *taos;
  char command[1024] = { 0 };
  param *winfo = (param * )sarg;

  if (((void*)0) == winfo){
   printf("para is null!\n");
    exit(1);
  }

  taos = taos_connect(winfo->server_ip, "root", "taosdata", ((void*)0), 0);
  if (taos == ((void*)0)) {
    printf("failed to connet to server:%s\n", winfo->server_ip);
    exit(1);
  }


  sprintf(command, "drop database %s;", winfo->db_name);
  if (taos_query(taos, command) != 0) {
    printf("failed to drop database, reason:%s\n", taos_errstr(taos));
    exit(1);
  }


  sprintf(command, "create database %s;", winfo->db_name);
  if (taos_query(taos, command) != 0) {
    printf("failed to create database, reason:%s\n", taos_errstr(taos));
    exit(1);
  }


  sprintf(command, "use %s;", winfo->db_name);
  if (taos_query(taos, command) != 0) {
    printf("failed to use database, reason:%s\n", taos_errstr(taos));
    exit(1);
  }


  sprintf(command, "create table %s (ts timestamp, speed int);", winfo->tbl_name);
  if (taos_query(taos, command) != 0) {
    printf("failed to create table, reason:%s\n", taos_errstr(taos));
    exit(1);
  }


  int index = 0;
  while (1) {
    if (g_thread_exit_flag) break;

    index++;
    sprintf(command, "insert into %s values (%ld, %d)", winfo->tbl_name, 1546300800000+index*1000, index);
    if (taos_query(taos, command)) {
      printf("failed to insert row [%s], reason:%s\n", command, taos_errstr(taos));
    }
    sleep(1);
  }

  taos_close(taos);
  return 0;
}
