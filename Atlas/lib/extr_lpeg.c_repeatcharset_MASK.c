#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/ * buff; } ;
typedef  TYPE_1__ Instruction ;
typedef  int /*<<< orphan*/ * Charset ;

/* Variables and functions */
 scalar_t__ CHARSETINSTSIZE ; 
 int /*<<< orphan*/  ISpan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t k ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, Charset cs, int l1, int n) {
  /* e; ...; e; span; */
  int i;
  Instruction *p = FUNC3(L, n*l1 + CHARSETINSTSIZE);
  for (i = 0; i < n; i++) {
    p += FUNC0(L, p, 1);
  }
  FUNC4(p, ISpan, 0);
  FUNC2(k, p[1].buff[k] = cs[k]);
  FUNC1(p);
  return 1;
}