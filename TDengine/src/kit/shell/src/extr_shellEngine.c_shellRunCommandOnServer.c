
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
typedef int int64_t ;
typedef int TAOS ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,...) ;
 scalar_t__ regex_match (char*,char*,int) ;
 int shellDumpResult (int *,char*,int*,int) ;
 int stderr ;
 int stdout ;
 char* strstr (char*,char*) ;
 int taosGetTimestampUs () ;
 int taos_affected_rows (int *) ;
 int taos_error (int *) ;
 char* taos_errstr (int *) ;
 int taos_field_count (int *) ;
 scalar_t__ taos_query (int *,char*) ;
 scalar_t__ wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

void shellRunCommandOnServer(TAOS *con, char command[]) {
  int64_t st, et;
  wordexp_t full_path;
  char * sptr = ((void*)0);
  char * cptr = ((void*)0);
  char * fname = ((void*)0);
  bool printMode = 0;

  if ((sptr = strstr(command, ">>")) != ((void*)0)) {
    cptr = strstr(command, ";");
    if (cptr != ((void*)0)) {
      *cptr = '\0';
    }

    if (wordexp(sptr + 2, &full_path, 0) != 0) {
      fprintf(stderr, "ERROR: invalid filename: %s\n", sptr + 2);
      return;
    }
    *sptr = '\0';
    fname = full_path.we_wordv[0];
  }

  if ((sptr = strstr(command, "\\G")) != ((void*)0)) {
    cptr = strstr(command, ";");
    if (cptr != ((void*)0)) {
      *cptr = '\0';
    }

    *sptr = '\0';
    printMode = 1;
  }

  st = taosGetTimestampUs();

  if (taos_query(con, command)) {
    taos_error(con);
    return;
  }

  if (regex_match(command, "^\\s*use\\s+[a-zA-Z0-9]+\\s*;\\s*$", REG_EXTENDED | REG_ICASE)) {
    fprintf(stdout, "Database changed.\n\n");
    fflush(stdout);
    return;
  }

  int num_fields = taos_field_count(con);
  if (num_fields != 0) {
    int error_no = 0;
    int numOfRows = shellDumpResult(con, fname, &error_no, printMode);
    if (numOfRows < 0) return;

    et = taosGetTimestampUs();
    if (error_no == 0) {
      printf("Query OK, %d row(s) in set (%.6fs)\n", numOfRows, (et - st) / 1E6);
    } else {
      printf("Query interrupted (%s), %d row(s) in set (%.6fs)\n", taos_errstr(con), numOfRows, (et - st) / 1E6);
    }
  } else {
    int num_rows_affacted = taos_affected_rows(con);
    et = taosGetTimestampUs();
    printf("Query OK, %d row(s) affected (%.6fs)\n", num_rows_affacted, (et - st) / 1E6);
  }

  printf("\n");

  if (fname != ((void*)0)) {
    wordfree(&full_path);
  }
  return;
}
