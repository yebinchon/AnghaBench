
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int i64 ;
typedef int Vdbe ;
struct TYPE_7__ {int iValue; char* zToken; } ;
struct TYPE_9__ {int flags; TYPE_1__ u; } ;
struct TYPE_8__ {int * pVdbe; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Expr ;


 int EP_IntValue ;
 int OP_Int64 ;
 int OP_Integer ;
 int P4_INT64 ;
 int SMALLEST_INT64 ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int codeReal (int *,char const*,int,int) ;
 char* dup8bytes (int *,char*) ;
 int sqlite3Atoi64 (char const*,int *,int ,int ) ;
 int sqlite3ErrorMsg (TYPE_2__*,char*,char*,char const*) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;

__attribute__((used)) static void codeInteger(Parse *pParse, Expr *pExpr, int negFlag, int iMem){
  Vdbe *v = pParse->pVdbe;
  if( pExpr->flags & EP_IntValue ){
    int i = pExpr->u.iValue;
    assert( i>=0 );
    if( negFlag ) i = -i;
    sqlite3VdbeAddOp2(v, OP_Integer, i, iMem);
  }else{
    int c;
    i64 value;
    const char *z = pExpr->u.zToken;
    assert( z!=0 );
    c = sqlite3Atoi64(z, &value, sqlite3Strlen30(z), SQLITE_UTF8);
    if( c==0 || (c==2 && negFlag) ){
      char *zV;
      if( negFlag ){ value = c==2 ? SMALLEST_INT64 : -value; }
      zV = dup8bytes(v, (char*)&value);
      sqlite3VdbeAddOp4(v, OP_Int64, 0, iMem, 0, zV, P4_INT64);
    }else{



      codeReal(v, z, negFlag, iMem);

    }
  }
}
