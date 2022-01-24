#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ L; int /*<<< orphan*/  funcs_ndx; } ;
typedef  TYPE_2__ rc_parse_state_t ;
struct TYPE_6__ {int /*<<< orphan*/  luafunc; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; TYPE_1__ value; } ;
typedef  TYPE_3__ rc_operand_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int RC_INVALID_LUA_OPERAND ; 
 int RC_OK ; 
 int /*<<< orphan*/  RC_OPERAND_LUA ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*,int) ; 

__attribute__((used)) static int FUNC8(rc_operand_t* self, const char** memaddr, rc_parse_state_t* parse) {
  const char* aux = *memaddr;
#ifndef RC_DISABLE_LUA
  const char* id;
#endif

  if (*aux++ != '@') {
    return RC_INVALID_LUA_OPERAND;
  }

  if (!FUNC1(*aux)) {
    return RC_INVALID_LUA_OPERAND;
  }

#ifndef RC_DISABLE_LUA
  id = aux;
#endif

  while (FUNC0(*aux) || *aux == '_') {
    aux++;
  }

#ifndef RC_DISABLE_LUA

  if (parse->L != 0) {
    if (!FUNC5(parse->L, parse->funcs_ndx)) {
      return RC_INVALID_LUA_OPERAND;
    }

    FUNC7(parse->L, id, aux - id);
    FUNC3(parse->L, parse->funcs_ndx);

    if (!FUNC4(parse->L, -1)) {
      FUNC6(parse->L, 1);
      return RC_INVALID_LUA_OPERAND;
    }

    self->value.luafunc = FUNC2(parse->L, LUA_REGISTRYINDEX);
  }

#endif /* RC_DISABLE_LUA */

  self->type = RC_OPERAND_LUA;
  *memaddr = aux;
  return RC_OK;
}