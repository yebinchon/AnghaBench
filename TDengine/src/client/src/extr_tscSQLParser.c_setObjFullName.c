
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {size_t n; int z; } ;
typedef TYPE_1__ SSQLToken ;


 size_t TSDB_CODE_INVALID_SQL ;
 size_t TSDB_CODE_SUCCESS ;
 size_t TSDB_DB_NAME_LEN ;
 size_t TSDB_METER_ID_LEN ;
 size_t TSDB_METER_NAME_LEN ;
 char* TS_PATH_DELIMITER ;
 int memcpy (char*,int ,size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 size_t tListLen (char*) ;

__attribute__((used)) static int32_t setObjFullName(char* fullName, char* account, SSQLToken* pDB, SSQLToken* tableName, int32_t* xlen) {
  int32_t totalLen = 0;

  if (account != ((void*)0)) {
    int32_t len = strlen(account);
    strcpy(fullName, account);
    fullName[len] = TS_PATH_DELIMITER[0];
    totalLen += (len + 1);
  }


  if (pDB != ((void*)0)) {
    if (pDB->n > TSDB_DB_NAME_LEN) {
      return TSDB_CODE_INVALID_SQL;
    }

    memcpy(&fullName[totalLen], pDB->z, pDB->n);
    totalLen += pDB->n;
  }

  if (tableName != ((void*)0)) {
    if (pDB != ((void*)0)) {
      fullName[totalLen] = TS_PATH_DELIMITER[0];
      totalLen += 1;


      if (tableName->n > TSDB_METER_NAME_LEN) {
        return TSDB_CODE_INVALID_SQL;
      }
    } else {

      if (tableName->n > TSDB_METER_NAME_LEN + TSDB_DB_NAME_LEN + tListLen(TS_PATH_DELIMITER)) {
        return TSDB_CODE_INVALID_SQL;
      }
    }

    memcpy(&fullName[totalLen], tableName->z, tableName->n);
    totalLen += tableName->n;
  }

  if (xlen != ((void*)0)) {
    *xlen = totalLen;
  }

  if (totalLen < TSDB_METER_ID_LEN) {
    fullName[totalLen] = 0;
  }

  return (totalLen <= TSDB_METER_ID_LEN) ? TSDB_CODE_SUCCESS : TSDB_CODE_INVALID_SQL;
}
