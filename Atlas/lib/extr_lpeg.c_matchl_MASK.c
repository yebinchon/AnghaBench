#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  Capture ;

/* Variables and functions */
 int IMAXCAPTURES ; 
 int /*<<< orphan*/  SUBJIDX ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  Capture capture[IMAXCAPTURES];
  const char *r;
  size_t l;
  Instruction *p = FUNC1(L, 1, NULL);
  const char *s = FUNC2(L, SUBJIDX, &l);
  int ptop = FUNC5(L);
  lua_Integer ii = FUNC3(L, 3, 1);
  size_t i = (ii > 0) ?
             (((size_t)ii <= l) ? (size_t)ii - 1 : l) :
             (((size_t)-ii <= l) ? l - ((size_t)-ii) : 0);
  FUNC7(L);  /* subscache */
  FUNC6(L, capture);  /* caplistidx */
  FUNC4(L, 1);  /* penvidx */
  r = FUNC8(L, s, s + i, s + l, p, capture, ptop);
  if (r == NULL) {
    FUNC7(L);
    return 1;
  }
  return FUNC0(L, s, r, ptop);
}