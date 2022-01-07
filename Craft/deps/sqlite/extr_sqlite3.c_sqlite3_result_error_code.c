
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int isError; TYPE_3__ s; } ;
typedef TYPE_1__ sqlite3_context ;


 int MEM_Null ;
 int SQLITE_STATIC ;
 int SQLITE_UTF8 ;
 int sqlite3ErrStr (int) ;
 int sqlite3VdbeMemSetStr (TYPE_3__*,int ,int,int ,int ) ;

void sqlite3_result_error_code(sqlite3_context *pCtx, int errCode){
  pCtx->isError = errCode;
  if( pCtx->s.flags & MEM_Null ){
    sqlite3VdbeMemSetStr(&pCtx->s, sqlite3ErrStr(errCode), -1,
                         SQLITE_UTF8, SQLITE_STATIC);
  }
}
