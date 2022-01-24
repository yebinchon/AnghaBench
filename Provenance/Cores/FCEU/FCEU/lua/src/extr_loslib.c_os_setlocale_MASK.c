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

/* Variables and functions */
#define  LC_ALL 133 
#define  LC_COLLATE 132 
#define  LC_CTYPE 131 
#define  LC_MONETARY 130 
#define  LC_NUMERIC 129 
#define  LC_TIME 128 
 int FUNC0 (int /*<<< orphan*/ *,int,char*,char const* const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const,char const*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  static const int cat[] = {LC_ALL, LC_COLLATE, LC_CTYPE, LC_MONETARY,
                      LC_NUMERIC, LC_TIME};
  static const char *const catnames[] = {"all", "collate", "ctype", "monetary",
     "numeric", "time", NULL};
  const char *l = FUNC1(L, 1, NULL);
  int op = FUNC0(L, 2, "all", catnames);
  FUNC2(L, FUNC3(cat[op], l));
  return 1;
}