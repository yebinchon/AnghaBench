
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {int rc; int * pzErrMsg; TYPE_1__* db; } ;
typedef TYPE_2__ InitData ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_NOMEM ;
 int SQLITE_RecoveryMode ;
 int sqlite3MAppendf (TYPE_1__*,int ,char*,int ,char const*) ;
 int sqlite3SetString (int *,TYPE_1__*,char*,char const*) ;

__attribute__((used)) static void corruptSchema(
  InitData *pData,
  const char *zObj,
  const char *zExtra
){
  sqlite3 *db = pData->db;
  if( !db->mallocFailed && (db->flags & SQLITE_RecoveryMode)==0 ){
    if( zObj==0 ) zObj = "?";
    sqlite3SetString(pData->pzErrMsg, db,
      "malformed database schema (%s)", zObj);
    if( zExtra ){
      *pData->pzErrMsg = sqlite3MAppendf(db, *pData->pzErrMsg,
                                 "%s - %s", *pData->pzErrMsg, zExtra);
    }
  }
  pData->rc = db->mallocFailed ? SQLITE_NOMEM : SQLITE_CORRUPT_BKPT;
}
