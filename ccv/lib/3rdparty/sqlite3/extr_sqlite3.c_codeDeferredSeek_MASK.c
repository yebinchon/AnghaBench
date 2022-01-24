#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int wctrlFlags; TYPE_3__* pParse; } ;
typedef  TYPE_1__ WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_10__ {int nCol; } ;
typedef  TYPE_2__ Table ;
struct TYPE_13__ {int /*<<< orphan*/  writeMask; } ;
struct TYPE_12__ {int* aiColumn; int nColumn; TYPE_2__* pTable; } ;
struct TYPE_11__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_DeferredSeek ; 
 int /*<<< orphan*/  P4_INTARRAY ; 
 int WHERE_OR_SUBCLAUSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  WhereInfo *pWInfo,              /* Where clause context */
  Index *pIdx,                    /* Index scan is using */
  int iCur,                       /* Cursor for IPK b-tree */
  int iIdxCur                     /* Index cursor */
){
  Parse *pParse = pWInfo->pParse; /* Parse context */
  Vdbe *v = pParse->pVdbe;        /* Vdbe to generate code within */

  FUNC1( iIdxCur>0 );
  FUNC1( pIdx->aiColumn[pIdx->nColumn-1]==-1 );
  
  FUNC4(v, OP_DeferredSeek, iIdxCur, 0, iCur);
  if( (pWInfo->wctrlFlags & WHERE_OR_SUBCLAUSE)
   && FUNC0(FUNC3(pParse)->writeMask)
  ){
    int i;
    Table *pTab = pIdx->pTable;
    int *ai = (int*)FUNC2(pParse->db, sizeof(int)*(pTab->nCol+1));
    if( ai ){
      ai[0] = pTab->nCol;
      for(i=0; i<pIdx->nColumn-1; i++){
        FUNC1( pIdx->aiColumn[i]<pTab->nCol );
        if( pIdx->aiColumn[i]>=0 ) ai[pIdx->aiColumn[i]+1] = i+1;
      }
      FUNC5(v, -1, (char*)ai, P4_INTARRAY);
    }
  }
}