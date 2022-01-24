#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {int nEq; int /*<<< orphan*/  nTop; int /*<<< orphan*/  nBtm; int /*<<< orphan*/ * pIndex; } ;
struct TYPE_6__ {TYPE_1__ btree; } ;
struct TYPE_7__ {int nSkip; int wsFlags; TYPE_2__ u; } ;
typedef  TYPE_3__ WhereLoop ;
typedef  int /*<<< orphan*/  StrAccum ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int WHERE_BTM_LIMIT ; 
 int WHERE_TOP_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC4(StrAccum *pStr, WhereLoop *pLoop){
  Index *pIndex = pLoop->u.btree.pIndex;
  u16 nEq = pLoop->u.btree.nEq;
  u16 nSkip = pLoop->nSkip;
  int i, j;

  if( nEq==0 && (pLoop->wsFlags&(WHERE_BTM_LIMIT|WHERE_TOP_LIMIT))==0 ) return;
  FUNC2(pStr, " (", 2);
  for(i=0; i<nEq; i++){
    const char *z = FUNC1(pIndex, i);
    if( i ) FUNC2(pStr, " AND ", 5);
    FUNC3(pStr, i>=nSkip ? "%s=?" : "ANY(%s)", z);
  }

  j = i;
  if( pLoop->wsFlags&WHERE_BTM_LIMIT ){
    FUNC0(pStr, pIndex, pLoop->u.btree.nBtm, j, i, ">");
    i = 1;
  }
  if( pLoop->wsFlags&WHERE_TOP_LIMIT ){
    FUNC0(pStr, pIndex, pLoop->u.btree.nTop, j, i, "<");
  }
  FUNC2(pStr, ")", 1);
}