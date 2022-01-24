#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int callstatus; int /*<<< orphan*/  previous; } ;
typedef  TYPE_1__ CallInfo ;

/* Variables and functions */
 int CIST_FIN ; 
 int CIST_TAIL ; 
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2 (lua_State *L, CallInfo *ci, const char **name) {
  if (ci == NULL)  /* no 'ci'? */
    return NULL;  /* no info */
  else if (ci->callstatus & CIST_FIN) {  /* is this a finalizer? */
    *name = "__gc";
    return "metamethod";  /* report it as such */
  }
  /* calling function is a known Lua function? */
  else if (!(ci->callstatus & CIST_TAIL) && FUNC1(ci->previous))
    return FUNC0(L, ci->previous, name);
  else return NULL;  /* no way to find a name */
}