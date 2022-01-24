#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {scalar_t__ code; int offset; } ;
struct TYPE_12__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 scalar_t__ ICall ; 
 scalar_t__ IJmp ; 
 scalar_t__ IOpenCall ; 
 scalar_t__ IRet ; 
 int /*<<< orphan*/  LUA_MINSTACK ; 
 int MAXPATTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 size_t FUNC25 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Instruction *FUNC27 (lua_State *L, int t) {
  Instruction *p;
  int i;
  int totalsize = 2;  /* include initial call and jump */
  int n = 0;  /* number of rules */
  int base = FUNC7(L);
  FUNC10(L);  /* to store relative positions of each rule */
  FUNC13(L, 1);  /* default initial rule */
  /* collect patterns and compute sizes */
  FUNC14(L);
  while (FUNC11(L, t) != 0) {
    int l;
    if (FUNC19(L, -2) == 1 && FUNC9(L, -1)) {
      FUNC16(L, base + 2);  /* use this value as initial rule */
      continue;
    }
    if (!FUNC26(L, -1))
      FUNC5(L, "invalid field in grammar");
    l = FUNC22(L, -1) + 1;  /* space for pattern + ret */
    if (totalsize >= MAXPATTSIZE - l)
      FUNC5(L, "grammar too large");
    FUNC4(L, LUA_MINSTACK, "grammar has too many rules");
    FUNC8(L, -2);  /* put key on top */
    FUNC15(L, -1);  /* duplicate key (for lua_next) */
    FUNC15(L, -1);  /* duplicate key (to index positions table)) */
    FUNC13(L, totalsize);  /* position for this rule */
    FUNC17(L, base + 1);  /* store key=>position in positions table */
    totalsize += l;
    n++;
  }
  FUNC3(L, n > 0, t, "empty grammar");
  p = FUNC20(L, totalsize);  /* create new pattern */
  p++;  /* save space for call */
  FUNC23(p++, IJmp, totalsize - 1);  /* after call, jumps to the end */
  for (i = 1; i <= n; i++) {  /* copy all rules into new pattern */
    p += FUNC0(L, p, base + 1 + i*2);
    FUNC23(p++, IRet, 0);
  }
  p -= totalsize;  /* back to first position */
  totalsize = 2;  /* go through each rule's position */
  for (i = 1; i <= n; i++) {  /* check all rules */
    int l = FUNC22(L, base + 1 + i*2) + 1;
    FUNC1(L, p, totalsize, totalsize + l, base + 1, base + 2 + i*2);
    totalsize += l;
  }
  FUNC15(L, base + 2);  /* get initial rule */
  FUNC6(L, base + 1);  /* get its position in postions table */
  i = FUNC19(L, -1);  /* convert to number */
  FUNC12(L, 1);
  if (i == 0)  /* is it defined? */
    FUNC5(L, "initial rule not defined in given grammar");
  FUNC23(p, ICall, i);  /* first instruction calls initial rule */
  /* correct calls */
  for (i = 0; i < totalsize; i += FUNC24(p + i)) {
    if (p[i].i.code == IOpenCall) {
      int pos = FUNC2(L, base + 1, p[i].i.offset);
      p[i].i.code = (p[FUNC25(p, i + 1)].i.code == IRet) ? IJmp : ICall;
      p[i].i.offset = pos - i;
    }
  }
  FUNC21(p);
  FUNC16(L, t);  /* put new pattern in old's position */
  FUNC18(L, base);  /* remove rules and positions table */
  return p;
}