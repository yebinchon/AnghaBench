#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* info; int /*<<< orphan*/  nval; int /*<<< orphan*/  ival; } ;
struct TYPE_7__ {int k; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 void* MAXINDEXRK ; 
 int FUNC0 (void*) ; 
#define  VFALSE 133 
#define  VK 132 
#define  VKFLT 131 
#define  VKINT 130 
#define  VNIL 129 
#define  VTRUE 128 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7 (FuncState *fs, expdesc *e) {
  FUNC3(fs, e);
  switch (e->k) {  /* move constants to 'k' */
    case VTRUE: e->u.info = FUNC1(fs, 1); goto vk;
    case VFALSE: e->u.info = FUNC1(fs, 0); goto vk;
    case VNIL: e->u.info = FUNC6(fs); goto vk;
    case VKINT: e->u.info = FUNC4(fs, e->u.ival); goto vk;
    case VKFLT: e->u.info = FUNC5(fs, e->u.nval); goto vk;
    case VK:
     vk:
      e->k = VK;
      if (e->u.info <= MAXINDEXRK)  /* constant fits in 'argC'? */
        return FUNC0(e->u.info);
      else break;
    default: break;
  }
  /* not a constant in the right range: put it in a register */
  return FUNC2(fs, e);
}