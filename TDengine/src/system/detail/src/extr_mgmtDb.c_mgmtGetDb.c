
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDbObj ;


 int dbSdb ;
 scalar_t__ sdbGetRow (int ,char*) ;

SDbObj *mgmtGetDb(char *db) { return (SDbObj *)sdbGetRow(dbSdb, db); }
