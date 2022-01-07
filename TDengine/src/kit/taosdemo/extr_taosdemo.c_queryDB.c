
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 int taos_close (int *) ;
 char* taos_errstr (int *) ;
 scalar_t__ taos_query (int *,char*) ;

void queryDB(TAOS *taos, char *command) {
  int i = 5;
  while (i > 0) {
    if (taos_query(taos, command) == 0) break;
    i--;
  }
  if (i == 0) {
    fprintf(stderr, "Failed to run %s, reason: %s\n", command, taos_errstr(taos));
    taos_close(taos);
    exit(EXIT_FAILURE);
  }
}
