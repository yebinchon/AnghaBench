#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_69__   TYPE_9__ ;
typedef  struct TYPE_68__   TYPE_8__ ;
typedef  struct TYPE_67__   TYPE_7__ ;
typedef  struct TYPE_66__   TYPE_6__ ;
typedef  struct TYPE_65__   TYPE_5__ ;
typedef  struct TYPE_64__   TYPE_4__ ;
typedef  struct TYPE_63__   TYPE_3__ ;
typedef  struct TYPE_62__   TYPE_2__ ;
typedef  struct TYPE_61__   TYPE_1__ ;
typedef  struct TYPE_60__   TYPE_15__ ;
typedef  struct TYPE_59__   TYPE_14__ ;
typedef  struct TYPE_58__   TYPE_13__ ;
typedef  struct TYPE_57__   TYPE_12__ ;
typedef  struct TYPE_56__   TYPE_11__ ;
typedef  struct TYPE_55__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_62__ {int /*<<< orphan*/  bEnabled; } ;
struct TYPE_67__ {int mallocFailed; TYPE_2__ lookaside; } ;
typedef  TYPE_7__ sqlite3 ;
struct TYPE_61__ {char* z; int n; } ;
struct TYPE_68__ {TYPE_9__* pTrig; void* op; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pExprList; void* pWhere; TYPE_1__ target; } ;
typedef  TYPE_8__ TriggerStep ;
struct TYPE_69__ {void* op; int /*<<< orphan*/  pTabSchema; int /*<<< orphan*/  pSchema; void* pWhen; TYPE_8__* step_list; } ;
typedef  TYPE_9__ Trigger ;
struct TYPE_55__ {char* member_0; int member_1; char* z; int n; } ;
typedef  TYPE_10__ Token ;
struct TYPE_56__ {int /*<<< orphan*/  pSchema; TYPE_4__* aCol; } ;
typedef  TYPE_11__ Table ;
struct TYPE_66__ {char* zName; TYPE_5__* aCol; } ;
struct TYPE_65__ {char* zName; TYPE_15__* pDflt; } ;
struct TYPE_64__ {char* zName; } ;
struct TYPE_63__ {int iFrom; } ;
struct TYPE_60__ {int /*<<< orphan*/  affinity; } ;
struct TYPE_59__ {int* aAction; int nCol; TYPE_9__** apTrigger; TYPE_6__* pFrom; TYPE_3__* aCol; } ;
struct TYPE_58__ {size_t* aiColumn; } ;
struct TYPE_57__ {TYPE_7__* db; } ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_12__ Parse ;
typedef  TYPE_13__ Index ;
typedef  TYPE_14__ FKey ;
typedef  int /*<<< orphan*/  ExprList ;
typedef  TYPE_15__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRDUP_REDUCE ; 
 int /*<<< orphan*/  OE_Abort ; 
#define  OE_Cascade 129 
 int OE_None ; 
#define  OE_Restrict 128 
 int OE_SetDflt ; 
 void* TK_DELETE ; 
 int /*<<< orphan*/  TK_DOT ; 
 int /*<<< orphan*/  TK_EQ ; 
 int /*<<< orphan*/  TK_ID ; 
 int /*<<< orphan*/  TK_IS ; 
 int /*<<< orphan*/  TK_NOT ; 
 int /*<<< orphan*/  TK_NULL ; 
 int /*<<< orphan*/  TK_RAISE ; 
 void* TK_SELECT ; 
 void* TK_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int) ; 
 TYPE_15__* FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_15__* FUNC6 (TYPE_7__*,TYPE_15__*,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_15__*) ; 
 void* FUNC8 (TYPE_7__*,TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_12__*,int /*<<< orphan*/ *,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_12__*,int /*<<< orphan*/ *,TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_12__*,TYPE_11__*,TYPE_14__*,TYPE_13__**,int**) ; 
 TYPE_15__* FUNC14 (TYPE_12__*,int /*<<< orphan*/ ,TYPE_15__*,TYPE_15__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ) ; 
 void* FUNC19 (char const*) ; 

__attribute__((used)) static Trigger *FUNC20(
  Parse *pParse,                  /* Parse context */
  Table *pTab,                    /* Table being updated or deleted from */
  FKey *pFKey,                    /* Foreign key to get action for */
  ExprList *pChanges              /* Change-list for UPDATE, NULL for DELETE */
){
  sqlite3 *db = pParse->db;       /* Database handle */
  int action;                     /* One of OE_None, OE_Cascade etc. */
  Trigger *pTrigger;              /* Trigger definition to return */
  int iAction = (pChanges!=0);    /* 1 for UPDATE, 0 for DELETE */

  action = pFKey->aAction[iAction];
  pTrigger = pFKey->apTrigger[iAction];

  if( action!=OE_None && !pTrigger ){
    u8 enableLookaside;           /* Copy of db->lookaside.bEnabled */
    char const *zFrom;            /* Name of child table */
    int nFrom;                    /* Length in bytes of zFrom */
    Index *pIdx = 0;              /* Parent key index for this FK */
    int *aiCol = 0;               /* child table cols -> parent key cols */
    TriggerStep *pStep = 0;        /* First (only) step of trigger program */
    Expr *pWhere = 0;             /* WHERE clause of trigger step */
    ExprList *pList = 0;          /* Changes list if ON UPDATE CASCADE */
    Select *pSelect = 0;          /* If RESTRICT, "SELECT RAISE(...)" */
    int i;                        /* Iterator variable */
    Expr *pWhen = 0;              /* WHEN clause for the trigger */

    if( FUNC13(pParse, pTab, pFKey, &pIdx, &aiCol) ) return 0;
    FUNC0( aiCol || pFKey->nCol==1 );

    for(i=0; i<pFKey->nCol; i++){
      Token tOld = { "old", 3 };  /* Literal "old" token */
      Token tNew = { "new", 3 };  /* Literal "new" token */
      Token tFromCol;             /* Name of column in child table */
      Token tToCol;               /* Name of column in parent table */
      int iFromCol;               /* Idx of column in child table */
      Expr *pEq;                  /* tFromCol = OLD.tToCol */

      iFromCol = aiCol ? aiCol[i] : pFKey->aCol[0].iFrom;
      FUNC0( iFromCol>=0 );
      tToCol.z = pIdx ? pTab->aCol[pIdx->aiColumn[i]].zName : "oid";
      tFromCol.z = pFKey->pFrom->aCol[iFromCol].zName;

      tToCol.n = FUNC19(tToCol.z);
      tFromCol.n = FUNC19(tFromCol.z);

      /* Create the expression "OLD.zToCol = zFromCol". It is important
      ** that the "OLD.zToCol" term is on the LHS of the = operator, so
      ** that the affinity and collation sequence associated with the
      ** parent table are used for the comparison. */
      pEq = FUNC14(pParse, TK_EQ,
          FUNC14(pParse, TK_DOT, 
            FUNC14(pParse, TK_ID, 0, 0, &tOld),
            FUNC14(pParse, TK_ID, 0, 0, &tToCol)
          , 0),
          FUNC14(pParse, TK_ID, 0, 0, &tFromCol)
      , 0);
      pWhere = FUNC6(db, pWhere, pEq);

      /* For ON UPDATE, construct the next term of the WHEN clause.
      ** The final WHEN clause will be like this:
      **
      **    WHEN NOT(old.col1 IS new.col1 AND ... AND old.colN IS new.colN)
      */
      if( pChanges ){
        pEq = FUNC14(pParse, TK_IS,
            FUNC14(pParse, TK_DOT, 
              FUNC14(pParse, TK_ID, 0, 0, &tOld),
              FUNC14(pParse, TK_ID, 0, 0, &tToCol),
              0),
            FUNC14(pParse, TK_DOT, 
              FUNC14(pParse, TK_ID, 0, 0, &tNew),
              FUNC14(pParse, TK_ID, 0, 0, &tToCol),
              0),
            0);
        pWhen = FUNC6(db, pWhen, pEq);
      }
  
      if( action!=OE_Restrict && (action!=OE_Cascade || pChanges) ){
        Expr *pNew;
        if( action==OE_Cascade ){
          pNew = FUNC14(pParse, TK_DOT, 
            FUNC14(pParse, TK_ID, 0, 0, &tNew),
            FUNC14(pParse, TK_ID, 0, 0, &tToCol)
          , 0);
        }else if( action==OE_SetDflt ){
          Expr *pDflt = pFKey->pFrom->aCol[iFromCol].pDflt;
          if( pDflt ){
            pNew = FUNC8(db, pDflt, 0);
          }else{
            pNew = FUNC14(pParse, TK_NULL, 0, 0, 0);
          }
        }else{
          pNew = FUNC14(pParse, TK_NULL, 0, 0, 0);
        }
        pList = FUNC9(pParse, pList, pNew);
        FUNC12(pParse, pList, &tFromCol, 0);
      }
    }
    FUNC3(db, aiCol);

    zFrom = pFKey->pFrom->zName;
    nFrom = FUNC19(zFrom);

    if( action==OE_Restrict ){
      Token tFrom;
      Expr *pRaise; 

      tFrom.z = zFrom;
      tFrom.n = nFrom;
      pRaise = FUNC5(db, TK_RAISE, "foreign key constraint failed");
      if( pRaise ){
        pRaise->affinity = OE_Abort;
      }
      pSelect = FUNC17(pParse, 
          FUNC9(pParse, 0, pRaise),
          FUNC18(db, 0, &tFrom, 0),
          pWhere,
          0, 0, 0, 0, 0, 0
      );
      pWhere = 0;
    }

    /* Disable lookaside memory allocation */
    enableLookaside = db->lookaside.bEnabled;
    db->lookaside.bEnabled = 0;

    pTrigger = (Trigger *)FUNC4(db, 
        sizeof(Trigger) +         /* struct Trigger */
        sizeof(TriggerStep) +     /* Single step in trigger program */
        nFrom + 1                 /* Space for pStep->target.z */
    );
    if( pTrigger ){
      pStep = pTrigger->step_list = (TriggerStep *)&pTrigger[1];
      pStep->target.z = (char *)&pStep[1];
      pStep->target.n = nFrom;
      FUNC2((char *)pStep->target.z, zFrom, nFrom);
  
      pStep->pWhere = FUNC8(db, pWhere, EXPRDUP_REDUCE);
      pStep->pExprList = FUNC11(db, pList, EXPRDUP_REDUCE);
      pStep->pSelect = FUNC16(db, pSelect, EXPRDUP_REDUCE);
      if( pWhen ){
        pWhen = FUNC14(pParse, TK_NOT, pWhen, 0, 0);
        pTrigger->pWhen = FUNC8(db, pWhen, EXPRDUP_REDUCE);
      }
    }

    /* Re-enable the lookaside buffer, if it was disabled earlier. */
    db->lookaside.bEnabled = enableLookaside;

    FUNC7(db, pWhere);
    FUNC7(db, pWhen);
    FUNC10(db, pList);
    FUNC15(db, pSelect);
    if( db->mallocFailed==1 ){
      FUNC1(db, pTrigger);
      return 0;
    }
    FUNC0( pStep!=0 );

    switch( action ){
      case OE_Restrict:
        pStep->op = TK_SELECT; 
        break;
      case OE_Cascade: 
        if( !pChanges ){ 
          pStep->op = TK_DELETE; 
          break; 
        }
      default:
        pStep->op = TK_UPDATE;
    }
    pStep->pTrig = pTrigger;
    pTrigger->pSchema = pTab->pSchema;
    pTrigger->pTabSchema = pTab->pSchema;
    pFKey->apTrigger[iAction] = pTrigger;
    pTrigger->op = (pChanges ? TK_UPDATE : TK_DELETE);
  }

  return pTrigger;
}