#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_16__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
struct TYPE_14__ {char* zToken; } ;
struct TYPE_13__ {TYPE_5__* pList; } ;
struct TYPE_18__ {scalar_t__ op; TYPE_2__ u; TYPE_1__ x; } ;
struct TYPE_17__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_15__ {int sortOrder; } ;
typedef  TYPE_5__ ExprList ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 int SQLITE_SO_ASC ; 
 int SQLITE_SO_DESC ; 
 scalar_t__ TK_AGG_FUNCTION ; 
 int WHERE_ORDERBY_MAX ; 
 int WHERE_ORDERBY_MIN ; 
 int WHERE_ORDERBY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static u8 FUNC3(sqlite3 *db, Expr *pFunc, ExprList **ppMinMax){
  int eRet = WHERE_ORDERBY_NORMAL;      /* Return value */
  ExprList *pEList = pFunc->x.pList;    /* Arguments to agg function */
  const char *zFunc;                    /* Name of aggregate function pFunc */
  ExprList *pOrderBy;
  u8 sortOrder;

  FUNC0( *ppMinMax==0 );
  FUNC0( pFunc->op==TK_AGG_FUNCTION );
  if( pEList==0 || pEList->nExpr!=1 ) return eRet;
  zFunc = pFunc->u.zToken;
  if( FUNC2(zFunc, "min")==0 ){
    eRet = WHERE_ORDERBY_MIN;
    sortOrder = SQLITE_SO_ASC;
  }else if( FUNC2(zFunc, "max")==0 ){
    eRet = WHERE_ORDERBY_MAX;
    sortOrder = SQLITE_SO_DESC;
  }else{
    return eRet;
  }
  *ppMinMax = pOrderBy = FUNC1(db, pEList, 0);
  FUNC0( pOrderBy!=0 || db->mallocFailed );
  if( pOrderBy ) pOrderBy->a[0].sortOrder = sortOrder;
  return eRet;
}