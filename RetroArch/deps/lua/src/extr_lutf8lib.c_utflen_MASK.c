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
typedef  int lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int n = 0;
  size_t len;
  const char *s = FUNC1(L, 1, &len);
  lua_Integer posi = FUNC5(FUNC2(L, 2, 1), len);
  lua_Integer posj = FUNC5(FUNC2(L, 3, -1), len);
  FUNC0(L, 1 <= posi && --posi <= (lua_Integer)len, 2,
                   "initial position out of string");
  FUNC0(L, --posj < (lua_Integer)len, 3,
                   "final position out of string");
  while (posi <= posj) {
    const char *s1 = FUNC6(s + posi, NULL);
    if (s1 == NULL) {  /* conversion error? */
      FUNC4(L);  /* return nil ... */
      FUNC3(L, posi + 1);  /* ... and current position */
      return 2;
    }
    posi = s1 - s;
    n++;
  }
  FUNC3(L, n);
  return 1;
}