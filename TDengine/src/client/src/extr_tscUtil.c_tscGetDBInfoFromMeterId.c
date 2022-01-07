
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS_PATH_DELIMITER ;
 int memcpy (char*,char*,int) ;
 char* strstr (char*,int ) ;

void tscGetDBInfoFromMeterId(char* meterId, char* db) {
  char* st = strstr(meterId, TS_PATH_DELIMITER);
  if (st != ((void*)0)) {
    char* end = strstr(st + 1, TS_PATH_DELIMITER);
    if (end != ((void*)0)) {
      memcpy(db, meterId, (end - meterId));
      db[end - meterId] = 0;
      return;
    }
  }

  db[0] = 0;
}
