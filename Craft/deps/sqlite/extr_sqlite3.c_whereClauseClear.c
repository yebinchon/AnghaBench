
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int pAndInfo; int pOrInfo; } ;
struct TYPE_9__ {int wtFlags; TYPE_1__ u; int pExpr; } ;
typedef TYPE_3__ WhereTerm ;
struct TYPE_10__ {int nTerm; TYPE_3__* a; TYPE_3__* aStatic; TYPE_2__* pParse; } ;
typedef TYPE_4__ WhereClause ;
struct TYPE_8__ {int * db; } ;


 int TERM_ANDINFO ;
 int TERM_DYNAMIC ;
 int TERM_ORINFO ;
 int sqlite3DbFree (int *,TYPE_3__*) ;
 int sqlite3ExprDelete (int *,int ) ;
 int whereAndInfoDelete (int *,int ) ;
 int whereOrInfoDelete (int *,int ) ;

__attribute__((used)) static void whereClauseClear(WhereClause *pWC){
  int i;
  WhereTerm *a;
  sqlite3 *db = pWC->pParse->db;
  for(i=pWC->nTerm-1, a=pWC->a; i>=0; i--, a++){
    if( a->wtFlags & TERM_DYNAMIC ){
      sqlite3ExprDelete(db, a->pExpr);
    }
    if( a->wtFlags & TERM_ORINFO ){
      whereOrInfoDelete(db, a->u.pOrInfo);
    }else if( a->wtFlags & TERM_ANDINFO ){
      whereAndInfoDelete(db, a->u.pAndInfo);
    }
  }
  if( pWC->a!=pWC->aStatic ){
    sqlite3DbFree(db, pWC->a);
  }
}
