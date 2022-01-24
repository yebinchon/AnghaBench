#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int byte ;
struct TYPE_4__ {int /*<<< orphan*/  buff; } ;
typedef  TYPE_1__ Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int arg;
  int top = FUNC3(L);
  Instruction *p = FUNC4(L);
  for (arg = 1; arg <= top; arg++) {
    int c;
    size_t l;
    const char *r = FUNC2(L, arg, &l);
    FUNC1(L, l == 2, arg, "range must have two characters");
    for (c = (byte)r[0]; c <= (byte)r[1]; c++)
      FUNC5(p[1].buff, c);
  }
  FUNC0(p);
  return 1;
}