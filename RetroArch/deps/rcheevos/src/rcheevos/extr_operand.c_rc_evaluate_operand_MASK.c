#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rc_peek_t ;
struct TYPE_8__ {unsigned int num; TYPE_1__* memref; int /*<<< orphan*/  luafunc; } ;
struct TYPE_9__ {int type; TYPE_2__ value; } ;
typedef  TYPE_3__ rc_operand_t ;
struct TYPE_10__ {void* ud; int /*<<< orphan*/  peek; } ;
typedef  TYPE_4__ rc_luapeek_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {unsigned int value; unsigned int previous; unsigned int prior; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  RC_OPERAND_ADDRESS 133 
#define  RC_OPERAND_CONST 132 
#define  RC_OPERAND_DELTA 131 
#define  RC_OPERAND_FP 130 
#define  RC_OPERAND_LUA 129 
#define  RC_OPERAND_PRIOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rc_luapeek ; 

unsigned FUNC8(rc_operand_t* self, rc_peek_t peek, void* ud, lua_State* L) {
#ifndef RC_DISABLE_LUA
  rc_luapeek_t luapeek;
#endif /* RC_DISABLE_LUA */

  unsigned value = 0;

  switch (self->type) {
    case RC_OPERAND_CONST:
      value = self->value.num;
      break;

    case RC_OPERAND_FP:
      /* This is handled by rc_evaluate_expression. */
      return 0;
    
    case RC_OPERAND_LUA:
#ifndef RC_DISABLE_LUA

      if (L != 0) {
        FUNC5(L, LUA_REGISTRYINDEX, self->value.luafunc);
        FUNC3(L, rc_luapeek);

        luapeek.peek = peek;
        luapeek.ud = ud;

        FUNC4(L, &luapeek);
        
        if (FUNC1(L, 2, 1, 0) == LUA_OK) {
          if (FUNC0(L, -1)) {
            value = FUNC6(L, -1);
          }
          else {
            value = (unsigned)FUNC7(L, -1);
          }
        }

        FUNC2(L, 1);
      }

#endif /* RC_DISABLE_LUA */

      break;

    case RC_OPERAND_ADDRESS:
      value = self->value.memref->value;
      break;

    case RC_OPERAND_DELTA:
      value = self->value.memref->previous;
      break;

    case RC_OPERAND_PRIOR:
      value = self->value.memref->prior;
      break;
  }

  return value;
}