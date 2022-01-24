#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_5__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_USESEEKRESULT ; 
 int /*<<< orphan*/  OP_Found ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  Parse *pParse,     /* Parsing and code generating context */
  int iTab,          /* A sorting index used to test for distinctness */
  int addrRepeat,    /* Jump to here if not distinct */
  int N,             /* Number of elements */
  int iMem           /* First element */
){
  Vdbe *v;
  int r1;

  v = pParse->pVdbe;
  r1 = FUNC1(pParse);
  FUNC4(v, OP_Found, iTab, addrRepeat, iMem, N); FUNC0(v);
  FUNC3(v, OP_MakeRecord, iMem, N, r1);
  FUNC4(v, OP_IdxInsert, iTab, r1, iMem, N);
  FUNC5(v, OPFLAG_USESEEKRESULT);
  FUNC2(pParse, r1);
}