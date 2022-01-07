
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;
typedef int TAOS ;


 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* taos_errstr (int *) ;
 int taos_free_result (int *) ;
 int * taos_use_result (int *) ;

void taos_error(TAOS *con) {
  fprintf(stderr, "\nDB error: %s\n", taos_errstr(con));


  TAOS_RES *pRes = taos_use_result(con);
  taos_free_result(pRes);
}
