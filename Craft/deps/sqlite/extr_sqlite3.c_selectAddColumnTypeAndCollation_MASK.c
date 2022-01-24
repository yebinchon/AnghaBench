#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct ExprList_item {int /*<<< orphan*/ * pExpr; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  sNC ;
struct TYPE_22__ {int /*<<< orphan*/  zName; } ;
struct TYPE_21__ {scalar_t__ affinity; void* zColl; void* zType; } ;
struct TYPE_20__ {int /*<<< orphan*/  pSrcList; } ;
struct TYPE_19__ {TYPE_2__* db; } ;
struct TYPE_18__ {int selFlags; TYPE_1__* pEList; int /*<<< orphan*/  pSrc; } ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
typedef  TYPE_3__ Select ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ NameContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_6__ Column ;
typedef  TYPE_7__ CollSeq ;

/* Variables and functions */
 int SF_Resolved ; 
 scalar_t__ SQLITE_AFF_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  Parse *pParse,        /* Parsing contexts */
  int nCol,             /* Number of columns */
  Column *aCol,         /* List of columns */
  Select *pSelect       /* SELECT used to determine types and collations */
){
  sqlite3 *db = pParse->db;
  NameContext sNC;
  Column *pCol;
  CollSeq *pColl;
  int i;
  Expr *p;
  struct ExprList_item *a;

  FUNC0( pSelect!=0 );
  FUNC0( (pSelect->selFlags & SF_Resolved)!=0 );
  FUNC0( nCol==pSelect->pEList->nExpr || db->mallocFailed );
  if( db->mallocFailed ) return;
  FUNC2(&sNC, 0, sizeof(sNC));
  sNC.pSrcList = pSelect->pSrc;
  a = pSelect->pEList->a;
  for(i=0, pCol=aCol; i<nCol; i++, pCol++){
    p = a[i].pExpr;
    pCol->zType = FUNC3(db, FUNC1(&sNC, p, 0, 0, 0));
    pCol->affinity = FUNC4(p);
    if( pCol->affinity==0 ) pCol->affinity = SQLITE_AFF_NONE;
    pColl = FUNC5(pParse, p);
    if( pColl ){
      pCol->zColl = FUNC3(db, pColl->zName);
    }
  }
}