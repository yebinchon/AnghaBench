
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct arguments {int dummy; } ;
typedef int int32_t ;
struct TYPE_8__ {int metric; int name; } ;
struct TYPE_7__ {int bytes; } ;
typedef scalar_t__* TAOS_ROW ;
typedef TYPE_1__ TAOS_FIELD ;
typedef TYPE_2__ STableRecord ;
typedef int FILE ;


 int O_CREAT ;
 int O_RDWR ;
 int SEEK_SET ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRWXU ;
 int S_IXGRP ;
 char* command ;
 int fprintf (int ,char*,...) ;
 int lseek (int,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int open (char*,int,int) ;
 scalar_t__ read (int,TYPE_2__*,int) ;
 int remove (char*) ;
 int * result ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int strcpy (int ,char*) ;
 int strncpy (int ,char*,int ) ;
 int taos ;
 int taosDumpTable (int ,int ,struct arguments*,int *) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 scalar_t__* taos_fetch_row (int *) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int ,char*) ;
 int * taos_use_result (int ) ;
 int tclose (int) ;
 int twrite (int,TYPE_2__*,int) ;

int32_t taosDumpMetric(char *metric, struct arguments *arguments, FILE *fp) {
  TAOS_ROW row = ((void*)0);
  int fd = -1;
  STableRecord tableRecord;

  strcpy(tableRecord.metric, metric);

  sprintf(command, "select tbname from %s", metric);
  if (taos_query(taos, command) != 0) {
    fprintf(stderr, "failed to run command %s\n", command);
    return -1;
  }

  result = taos_use_result(taos);
  if (result == ((void*)0)) {
    fprintf(stderr, "failed to use result\n");
    return -1;
  }

  fd = open(".table.tmp", O_RDWR | O_CREAT, S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH);
  if (fd < 0) {
    fprintf(stderr, "failed to open temp file");
    return -1;
  }

  TAOS_FIELD *fields = taos_fetch_fields(result);

  while ((row = taos_fetch_row(result)) != ((void*)0)) {
    memset(&tableRecord, 0, sizeof(STableRecord));
    strncpy(tableRecord.name, (char *)row[0], fields[0].bytes);
    strcpy(tableRecord.metric, metric);
    twrite(fd, &tableRecord, sizeof(STableRecord));
  }

  taos_free_result(result);
  result = ((void*)0);

  lseek(fd, 0, SEEK_SET);

  while (read(fd, &tableRecord, sizeof(STableRecord)) > 0) {
    taosDumpTable(tableRecord.name, tableRecord.metric, arguments, fp);
  }

  tclose(fd);
  remove(".table.tmp");

  return 0;
}
