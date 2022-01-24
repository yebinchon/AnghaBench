#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ code; scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 scalar_t__ IChoice ; 
 scalar_t__ IOpenCall ; 
 scalar_t__ IPartialCommit ; 
 scalar_t__ IRet ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, Instruction *op, int from, int to,
                       int postable, int rule) {
  int i;
  int lastopen = 0;  /* more recent OpenCall seen in the code */
  for (i = from; i < to; i += FUNC3(op + i)) {
    if (op[i].i.code == IPartialCommit && op[i].i.offset < 0) {  /* loop? */
      int start = FUNC1(op, i);
      FUNC0(op[start - 1].i.code == IChoice && FUNC1(op, start - 1) == i + 1);
      if (start <= lastopen) {  /* loop does contain an open call? */
        if (!FUNC5(L, op, op + start, op + i, postable, rule)) /* check body */
          FUNC2(L, "possible infinite loop in %s", FUNC4(L, rule));
      }
    }
    else if (op[i].i.code == IOpenCall)
      lastopen = i;
  }
  FUNC0(op[i - 1].i.code == IRet);
  FUNC5(L, op, op + from, op + to - 1, postable, rule);
}