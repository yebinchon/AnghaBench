
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nZero; int i; } ;
struct TYPE_5__ {int type; int flags; int enc; int n; int z; TYPE_1__ u; int r; } ;
typedef TYPE_2__ sqlite3_value ;
typedef int sqlite3_stmt ;


 int MEM_Zero ;




 int SQLITE_TRANSIENT ;
 int bindText (int *,int,int ,int ,int ,int ) ;
 int sqlite3_bind_blob (int *,int,int ,int ,int ) ;
 int sqlite3_bind_double (int *,int,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_zeroblob (int *,int,int ) ;

int sqlite3_bind_value(sqlite3_stmt *pStmt, int i, const sqlite3_value *pValue){
  int rc;
  switch( pValue->type ){
    case 129: {
      rc = sqlite3_bind_int64(pStmt, i, pValue->u.i);
      break;
    }
    case 130: {
      rc = sqlite3_bind_double(pStmt, i, pValue->r);
      break;
    }
    case 131: {
      if( pValue->flags & MEM_Zero ){
        rc = sqlite3_bind_zeroblob(pStmt, i, pValue->u.nZero);
      }else{
        rc = sqlite3_bind_blob(pStmt, i, pValue->z, pValue->n,SQLITE_TRANSIENT);
      }
      break;
    }
    case 128: {
      rc = bindText(pStmt,i, pValue->z, pValue->n, SQLITE_TRANSIENT,
                              pValue->enc);
      break;
    }
    default: {
      rc = sqlite3_bind_null(pStmt, i);
      break;
    }
  }
  return rc;
}
