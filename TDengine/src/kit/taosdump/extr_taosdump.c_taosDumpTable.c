
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {int dummy; } ;
typedef int int32_t ;
typedef int STableDef ;
typedef int SColDes ;
typedef int FILE ;


 int TSDB_MAX_COLUMNS ;
 scalar_t__ calloc (int,int) ;
 int memset (int *,int ,int) ;
 int taosDumpCreateMTableClause (int *,char*,int,struct arguments*,int *) ;
 int taosDumpCreateTableClause (int *,int,struct arguments*,int *) ;
 int taosDumpTableData (int *,char*,struct arguments*) ;
 int taosGetTableDes (char*,int *) ;

int32_t taosDumpTable(char *table, char *metric, struct arguments *arguments, FILE *fp) {
  int count = 0;

  STableDef *tableDes = (STableDef *)calloc(1, sizeof(STableDef) + sizeof(SColDes) * TSDB_MAX_COLUMNS);

  if (metric != ((void*)0) && metric[0] != '\0') {
    count = taosGetTableDes(metric, tableDes);

    if (count < 0) return -1;

    taosDumpCreateTableClause(tableDes, count, arguments, fp);

    memset(tableDes, 0, sizeof(STableDef) + sizeof(SColDes) * TSDB_MAX_COLUMNS);

    count = taosGetTableDes(table, tableDes);

    if (count < 0) return -1;

    taosDumpCreateMTableClause(tableDes, metric, count, arguments, fp);

  } else {
    count = taosGetTableDes(table, tableDes);

    if (count < 0) return -1;

    taosDumpCreateTableClause(tableDes, count, arguments, fp);
  }

  return taosDumpTableData(fp, table, arguments);
}
