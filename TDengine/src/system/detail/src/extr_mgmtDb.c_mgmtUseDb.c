
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pDb; } ;
typedef int SDbObj ;
typedef TYPE_1__ SConnObj ;


 int TSDB_CODE_INVALID_DB ;
 int * mgmtGetDb (char*) ;

int mgmtUseDb(SConnObj *pConn, char *name) {
  SDbObj *pDb;
  int code = TSDB_CODE_INVALID_DB;


  pDb = mgmtGetDb(name);
  if (pDb) {
    pConn->pDb = pDb;
    code = 0;
  }

  return code;
}
