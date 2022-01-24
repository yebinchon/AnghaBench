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
struct TYPE_4__ {int /*<<< orphan*/  buff; } ;
typedef  TYPE_1__ Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  size_t l;
  const char *s = FUNC2(L, 1, &l);
  if (l == 1)
    FUNC1(L, 1, NULL);  /* a unit set is equivalent to a literal */
  else {
    Instruction *p = FUNC3(L);
    while (l--) {
      FUNC4(p[1].buff, (unsigned char)(*s));
      s++;
    }
    FUNC0(p);
  }
  return 1;
}