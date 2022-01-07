
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db ;
typedef int SDbObj ;


 int TSDB_METER_ID_LEN ;
 int TS_PATH_DELIMITER ;
 int dbSdb ;
 int memset (char*,int ,int) ;
 scalar_t__ sdbGetRow (int ,char*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,int ) ;

SDbObj *mgmtGetDbByMeterId(char *meterId) {
  char db[TSDB_METER_ID_LEN], *pos;

  pos = strstr(meterId, TS_PATH_DELIMITER);
  pos = strstr(pos + 1, TS_PATH_DELIMITER);
  memset(db, 0, sizeof(db));
  strncpy(db, meterId, pos - meterId);

  return (SDbObj *)sdbGetRow(dbSdb, db);
}
