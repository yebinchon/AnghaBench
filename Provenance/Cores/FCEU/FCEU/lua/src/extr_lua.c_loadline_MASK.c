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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  int status;
  FUNC7(L, 0);
  if (!FUNC10(L, 1))
    return -1;  /* no input */
  for (;;) {  /* repeat until gets a complete line */
    status = FUNC1(L, FUNC9(L, 1), FUNC8(L, 1), "=stdin");
    if (!FUNC0(L, status)) break;  /* cannot try to add lines? */
    if (!FUNC10(L, 0))  /* no more input? */
      return -1;
    FUNC4(L, "\n");  /* add a new line... */
    FUNC3(L, -2);  /* ...between the two lines */
    FUNC2(L, 3);  /* join them */
  }
  FUNC6(L, 1);
  FUNC5(L, 1);  /* remove line */
  return status;
}