
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_SUB ;
typedef int * TAOS_ROW ;
typedef int TAOS_FIELD ;


 int exit (int) ;
 int printf (char*,...) ;
 int strcpy (char*,char*) ;
 int * taos_consume (int *) ;
 int * taos_fetch_subfields (int *) ;
 int taos_print_row (char*,int *,int *,int) ;
 int taos_subfields_count (int *) ;
 int * taos_subscribe (char*,char*,char*,char*,char*,int ,int) ;
 int taos_unsubscribe (int *) ;

int main(int argc, char *argv[])
{
  TAOS_SUB *tsub;
  TAOS_ROW row;
  char dbname[64], table[64];
  char temp[256];

  if ( argc == 1 ) {
    printf("usage: %s server-ip db-name table-name \n", argv[0]);
    exit(0);
  }

  if ( argc >= 2 ) strcpy(dbname, argv[2]);
  if ( argc >= 3 ) strcpy(table, argv[3]);

  tsub = taos_subscribe(argv[1], "root", "taosdata", dbname, table, 0, 1000);
  if ( tsub == ((void*)0) ) {
    printf("failed to connet to db:%s\n", dbname);
    exit(1);
  }

  TAOS_FIELD *fields = taos_fetch_subfields(tsub);
  int fcount = taos_subfields_count(tsub);

  printf("start to retrieve data\n");
  printf("please use other taos client, insert rows into %s.%s\n", dbname, table);
  while ( 1 ) {
    row = taos_consume(tsub);
    if ( row == ((void*)0) ) break;

    taos_print_row(temp, row, fields, fcount);
    printf("%s\n", temp);
  }

  taos_unsubscribe(tsub);

  return 0;
}
