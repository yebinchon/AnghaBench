
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;


 int con ;
 int exit (int ) ;
 int printf (char*) ;
 int * result ;
 int taos_stop_query (int *) ;
 int * taos_use_result (int ) ;
 int tscQueueAsyncFreeResult (int *) ;

void interruptHandler(int signum) {
  printf("\nReceive ctrl+c or other signal, quit shell.\n");
  exit(0);

}
