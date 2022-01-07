
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zErrMsg; scalar_t__ nErr; int db; int rc; } ;
typedef TYPE_1__ Parse ;


 int assert (int) ;
 int sqlite3DbFree (int ,scalar_t__) ;

__attribute__((used)) static void transferParseError(Parse *pTo, Parse *pFrom){
  assert( pFrom->zErrMsg==0 || pFrom->nErr );
  assert( pTo->zErrMsg==0 || pTo->nErr );
  if( pTo->nErr==0 ){
    pTo->zErrMsg = pFrom->zErrMsg;
    pTo->nErr = pFrom->nErr;
    pTo->rc = pFrom->rc;
  }else{
    sqlite3DbFree(pFrom->db, pFrom->zErrMsg);
  }
}
