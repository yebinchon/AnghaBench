
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int replica; int days; int keep; int tables; int rows; int cache; int ablocks; int tblocks; int ctime; int clog; int comp; } ;
typedef TYPE_1__ SDbInfo ;
typedef int FILE ;


 char* buffer ;
 int fprintf (int *,char*,char*) ;
 int sprintf (char*,char*,...) ;

void taosDumpCreateDbClause(SDbInfo *dbInfo, bool isDumpProperty, FILE *fp) {
  char *pstr = buffer;

  pstr += sprintf(pstr, "CREATE DATABASE IF NOT EXISTS %s", dbInfo->name);
  if (isDumpProperty) {
    pstr += sprintf(pstr,
        " REPLICA %d DAYS %d KEEP %d TABLES %d ROWS %d CACHE %d ABLOCKS %d TBLOCKS %d CTIME %d CLOG %d COMP %d",
        dbInfo->replica, dbInfo->days, dbInfo->keep, dbInfo->tables, dbInfo->rows, dbInfo->cache,
        dbInfo->ablocks, dbInfo->tblocks, dbInfo->ctime, dbInfo->clog, dbInfo->comp);
  }

  fprintf(fp, "%s\n\n", buffer);
}
