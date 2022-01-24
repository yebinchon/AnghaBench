#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_9__ ;
typedef  struct TYPE_44__   TYPE_8__ ;
typedef  struct TYPE_43__   TYPE_7__ ;
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_20__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_13__ ;
typedef  struct TYPE_34__   TYPE_12__ ;
typedef  struct TYPE_33__   TYPE_11__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct SrcList_item {scalar_t__ iCursor; int /*<<< orphan*/  pTab; } ;
struct TYPE_38__ {TYPE_10__* pNC; } ;
struct TYPE_43__ {TYPE_9__* pParse; TYPE_2__ u; } ;
typedef  TYPE_7__ Walker ;
struct TYPE_45__ {scalar_t__ nTab; TYPE_20__* db; scalar_t__ nErr; } ;
struct TYPE_44__ {scalar_t__ nAlloc; int nSrc; struct SrcList_item* a; } ;
struct TYPE_42__ {char const* zToken; } ;
struct TYPE_41__ {int /*<<< orphan*/  pSelect; TYPE_12__* pList; } ;
struct TYPE_39__ {char* zToken; } ;
struct TYPE_40__ {TYPE_3__ u; } ;
struct TYPE_36__ {int /*<<< orphan*/  busy; } ;
struct TYPE_37__ {scalar_t__ mallocFailed; TYPE_1__ init; } ;
struct TYPE_35__ {int op; scalar_t__ iTable; int iColumn; TYPE_5__ x; int /*<<< orphan*/  op2; TYPE_6__ u; struct TYPE_35__* pRight; TYPE_4__* pLeft; int /*<<< orphan*/  affinity; int /*<<< orphan*/  pTab; } ;
struct TYPE_34__ {int nExpr; } ;
struct TYPE_33__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  xFunc; } ;
struct TYPE_32__ {int ncFlags; int nRef; struct TYPE_32__* pNext; TYPE_8__* pSrcList; int /*<<< orphan*/  nErr; TYPE_9__* pParse; } ;
typedef  TYPE_8__ SrcList ;
typedef  TYPE_9__ Parse ;
typedef  TYPE_10__ NameContext ;
typedef  TYPE_11__ FuncDef ;
typedef  TYPE_12__ ExprList ;
typedef  TYPE_13__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_20__*) ; 
 int /*<<< orphan*/  EP_Resolved ; 
 int /*<<< orphan*/  EP_VarSelect ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC1 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int NC_AllowAgg ; 
 int NC_HasAgg ; 
 int NC_IsCheck ; 
 int /*<<< orphan*/  SQLITE_AFF_INTEGER ; 
 int SQLITE_DENY ; 
 int /*<<< orphan*/  SQLITE_FUNCTION ; 
 int SQLITE_OK ; 
 int const TK_AGG_FUNCTION ; 
 int TK_COLUMN ; 
#define  TK_CONST_FUNC 136 
#define  TK_DOT 135 
#define  TK_EXISTS 134 
#define  TK_FUNCTION 133 
#define  TK_ID 132 
#define  TK_IN 131 
 int const TK_NULL ; 
#define  TK_ROW 130 
#define  TK_SELECT 129 
#define  TK_VARIABLE 128 
 int WRC_Abort ; 
 int WRC_Continue ; 
 int WRC_Prune ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_9__*,char const*,char const*,char const*,TYPE_10__*,TYPE_13__*) ; 
 int FUNC6 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,char*,...) ; 
 TYPE_11__* FUNC8 (TYPE_20__*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_13__*,TYPE_8__*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(Walker *pWalker, Expr *pExpr){
  NameContext *pNC;
  Parse *pParse;

  pNC = pWalker->u.pNC;
  FUNC4( pNC!=0 );
  pParse = pNC->pParse;
  FUNC4( pParse==pWalker->pParse );

  if( FUNC1(pExpr, EP_Resolved) ) return WRC_Prune;
  FUNC3(pExpr, EP_Resolved);
#ifndef NDEBUG
  if( pNC->pSrcList && pNC->pSrcList->nAlloc>0 ){
    SrcList *pSrcList = pNC->pSrcList;
    int i;
    for(i=0; i<pNC->pSrcList->nSrc; i++){
      FUNC4( pSrcList->a[i].iCursor>=0 && pSrcList->a[i].iCursor<pParse->nTab);
    }
  }
#endif
  switch( pExpr->op ){

#if defined(SQLITE_ENABLE_UPDATE_DELETE_LIMIT) && !defined(SQLITE_OMIT_SUBQUERY)
    /* The special operator TK_ROW means use the rowid for the first
    ** column in the FROM clause.  This is used by the LIMIT and ORDER BY
    ** clause processing on UPDATE and DELETE statements.
    */
    case TK_ROW: {
      SrcList *pSrcList = pNC->pSrcList;
      struct SrcList_item *pItem;
      assert( pSrcList && pSrcList->nSrc==1 );
      pItem = pSrcList->a; 
      pExpr->op = TK_COLUMN;
      pExpr->pTab = pItem->pTab;
      pExpr->iTable = pItem->iCursor;
      pExpr->iColumn = -1;
      pExpr->affinity = SQLITE_AFF_INTEGER;
      break;
    }
#endif /* defined(SQLITE_ENABLE_UPDATE_DELETE_LIMIT) && !defined(SQLITE_OMIT_SUBQUERY) */

    /* A lone identifier is the name of a column.
    */
    case TK_ID: {
      return FUNC5(pParse, 0, 0, pExpr->u.zToken, pNC, pExpr);
    }
  
    /* A table name and column name:     ID.ID
    ** Or a database, table and column:  ID.ID.ID
    */
    case TK_DOT: {
      const char *zColumn;
      const char *zTable;
      const char *zDb;
      Expr *pRight;

      /* if( pSrcList==0 ) break; */
      pRight = pExpr->pRight;
      if( pRight->op==TK_ID ){
        zDb = 0;
        zTable = pExpr->pLeft->u.zToken;
        zColumn = pRight->u.zToken;
      }else{
        FUNC4( pRight->op==TK_DOT );
        zDb = pExpr->pLeft->u.zToken;
        zTable = pRight->pLeft->u.zToken;
        zColumn = pRight->pRight->u.zToken;
      }
      return FUNC5(pParse, zDb, zTable, zColumn, pNC, pExpr);
    }

    /* Resolve function names
    */
    case TK_CONST_FUNC:
    case TK_FUNCTION: {
      ExprList *pList = pExpr->x.pList;    /* The argument list */
      int n = pList ? pList->nExpr : 0;    /* Number of arguments */
      int no_such_func = 0;       /* True if no such function exists */
      int wrong_num_args = 0;     /* True if wrong number of arguments */
      int is_agg = 0;             /* True if is an aggregate function */
      int auth;                   /* Authorization to use the function */
      int nId;                    /* Number of characters in function name */
      const char *zId;            /* The function name. */
      FuncDef *pDef;              /* Information about the function */
      u8 enc = FUNC0(pParse->db);   /* The database encoding */

      FUNC13( pExpr->op==TK_CONST_FUNC );
      FUNC4( !FUNC2(pExpr, EP_xIsSelect) );
      zId = pExpr->u.zToken;
      nId = FUNC10(zId);
      pDef = FUNC8(pParse->db, zId, nId, n, enc, 0);
      if( pDef==0 ){
        pDef = FUNC8(pParse->db, zId, nId, -2, enc, 0);
        if( pDef==0 ){
          no_such_func = 1;
        }else{
          wrong_num_args = 1;
        }
      }else{
        is_agg = pDef->xFunc==0;
      }
#ifndef SQLITE_OMIT_AUTHORIZATION
      if( pDef ){
        auth = FUNC6(pParse, SQLITE_FUNCTION, 0, pDef->zName, 0);
        if( auth!=SQLITE_OK ){
          if( auth==SQLITE_DENY ){
            FUNC7(pParse, "not authorized to use function: %s",
                                    pDef->zName);
            pNC->nErr++;
          }
          pExpr->op = TK_NULL;
          return WRC_Prune;
        }
      }
#endif
      if( is_agg && (pNC->ncFlags & NC_AllowAgg)==0 ){
        FUNC7(pParse, "misuse of aggregate function %.*s()", nId,zId);
        pNC->nErr++;
        is_agg = 0;
      }else if( no_such_func && pParse->db->init.busy==0 ){
        FUNC7(pParse, "no such function: %.*s", nId, zId);
        pNC->nErr++;
      }else if( wrong_num_args ){
        FUNC7(pParse,"wrong number of arguments to function %.*s()",
             nId, zId);
        pNC->nErr++;
      }
      if( is_agg ) pNC->ncFlags &= ~NC_AllowAgg;
      FUNC11(pWalker, pList);
      if( is_agg ){
        NameContext *pNC2 = pNC;
        pExpr->op = TK_AGG_FUNCTION;
        pExpr->op2 = 0;
        while( pNC2 && !FUNC9(pExpr, pNC2->pSrcList) ){
          pExpr->op2++;
          pNC2 = pNC2->pNext;
        }
        if( pNC2 ) pNC2->ncFlags |= NC_HasAgg;
        pNC->ncFlags |= NC_AllowAgg;
      }
      /* FIX ME:  Compute pExpr->affinity based on the expected return
      ** type of the function 
      */
      return WRC_Prune;
    }
#ifndef SQLITE_OMIT_SUBQUERY
    case TK_SELECT:
    case TK_EXISTS:  FUNC13( pExpr->op==TK_EXISTS );
#endif
    case TK_IN: {
      FUNC13( pExpr->op==TK_IN );
      if( FUNC2(pExpr, EP_xIsSelect) ){
        int nRef = pNC->nRef;
#ifndef SQLITE_OMIT_CHECK
        if( (pNC->ncFlags & NC_IsCheck)!=0 ){
          FUNC7(pParse,"subqueries prohibited in CHECK constraints");
        }
#endif
        FUNC12(pWalker, pExpr->x.pSelect);
        FUNC4( pNC->nRef>=nRef );
        if( nRef!=pNC->nRef ){
          FUNC3(pExpr, EP_VarSelect);
        }
      }
      break;
    }
#ifndef SQLITE_OMIT_CHECK
    case TK_VARIABLE: {
      if( (pNC->ncFlags & NC_IsCheck)!=0 ){
        FUNC7(pParse,"parameters prohibited in CHECK constraints");
      }
      break;
    }
#endif
  }
  return (pParse->nErr || pParse->db->mallocFailed) ? WRC_Abort : WRC_Continue;
}