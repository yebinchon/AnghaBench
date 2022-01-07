
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct arguments {int with_property; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int metric; int name; } ;
struct TYPE_10__ {int bytes; } ;
typedef scalar_t__* TAOS_ROW ;
typedef TYPE_1__ TAOS_FIELD ;
typedef TYPE_2__ STableRecord ;
typedef TYPE_3__ SDbInfo ;
typedef int FILE ;


 int O_CREAT ;
 int O_RDWR ;
 int SEEK_SET ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRWXU ;
 int S_IXGRP ;
 size_t TSDB_SHOW_TABLES_METRIC_INDEX ;
 size_t TSDB_SHOW_TABLES_NAME_INDEX ;
 char* command ;
 int fprintf (int ,char*,...) ;
 int lseek (int,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int open (char*,int,int) ;
 scalar_t__ read (int,TYPE_2__*,int) ;
 int remove (char*) ;
 int * result ;
 int sprintf (char*,char*,...) ;
 int stderr ;
 int strncpy (int ,char*,int ) ;
 int taos ;
 int taosDumpCreateDbClause (TYPE_3__*,int ,int *) ;
 int taosDumpTable (int ,int ,struct arguments*,int *) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 scalar_t__* taos_fetch_row (int *) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int ,char*) ;
 int * taos_use_result (int ) ;
 int tclose (int) ;
 int twrite (int,TYPE_2__*,int) ;

int taosDumpDb(SDbInfo *dbInfo, struct arguments *arguments, FILE *fp) {
  TAOS_ROW row;
  int fd = -1;
  STableRecord tableRecord;

  taosDumpCreateDbClause(dbInfo, arguments->with_property, fp);

  sprintf(command, "use %s", dbInfo->name);
  if (taos_query(taos, command) != 0) {
    fprintf(stderr, "invalid database %s\n", dbInfo->name);
    return -1;
  }

  fprintf(fp, "USE %s\n\n", dbInfo->name);

  sprintf(command, "show tables");
  if (taos_query(taos, command) != 0) {
    fprintf(stderr, "failed to run command %s\n", command);
    return -1;
  }

  result = taos_use_result(taos);
  if (result == ((void*)0)) {
    fprintf(stderr, "failed to use result\n");
    return -1;
  }

  TAOS_FIELD *fields = taos_fetch_fields(result);

  fd = open(".table.tmp", O_RDWR | O_CREAT, S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH);
  if (fd == -1) {
    fprintf(stderr, "failed to open temp file\n");
    taos_free_result(result);
    return -1;
  }

  while ((row = taos_fetch_row(result)) != ((void*)0)) {
    memset(&tableRecord, 0, sizeof(STableRecord));
    strncpy(tableRecord.name, (char *)row[TSDB_SHOW_TABLES_NAME_INDEX], fields[TSDB_SHOW_TABLES_NAME_INDEX].bytes);
    strncpy(tableRecord.metric, (char *)row[TSDB_SHOW_TABLES_METRIC_INDEX], fields[TSDB_SHOW_TABLES_METRIC_INDEX].bytes);

    twrite(fd, &tableRecord, sizeof(STableRecord));
  }

  taos_free_result(result);

  lseek(fd, 0, SEEK_SET);

  while (read(fd, &tableRecord, sizeof(STableRecord)) > 0) {
    taosDumpTable(tableRecord.name, tableRecord.metric, arguments, fp);
  }

  tclose(fd);
  remove(".table.tmp");

  return 0;
}
