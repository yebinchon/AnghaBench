
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_4__ {int const nVTrans; int ** aVTrans; } ;
typedef TYPE_1__ sqlite3 ;
typedef int VTable ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int memset (int **,int ,int) ;
 int ** sqlite3DbRealloc (TYPE_1__*,void*,int) ;

__attribute__((used)) static int growVTrans(sqlite3 *db){
  const int ARRAY_INCR = 5;


  if( (db->nVTrans%ARRAY_INCR)==0 ){
    VTable **aVTrans;
    int nBytes = sizeof(sqlite3_vtab *) * (db->nVTrans + ARRAY_INCR);
    aVTrans = sqlite3DbRealloc(db, (void *)db->aVTrans, nBytes);
    if( !aVTrans ){
      return SQLITE_NOMEM_BKPT;
    }
    memset(&aVTrans[db->nVTrans], 0, sizeof(sqlite3_vtab *)*ARRAY_INCR);
    db->aVTrans = aVTrans;
  }

  return SQLITE_OK;
}
