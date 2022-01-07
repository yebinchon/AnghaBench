
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS ;


 int exit (int) ;
 int printf (char*,char*) ;
 int taos_close (int *) ;
 char* taos_errstr (int *) ;

void taos_error(TAOS *con) {
  printf("TDengine error: %s\n", taos_errstr(con));
  taos_close(con);
  exit(1);
}
