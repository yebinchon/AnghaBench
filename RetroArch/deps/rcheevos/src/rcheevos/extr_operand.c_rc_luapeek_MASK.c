#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int (* peek ) (unsigned int,unsigned int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ud; } ;
typedef  TYPE_1__ rc_luapeek_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {
  unsigned address = (unsigned)FUNC0(L, 1);
  unsigned num_bytes = (unsigned)FUNC0(L, 2);
  rc_luapeek_t* luapeek = (rc_luapeek_t*)FUNC2(L, 3);

  unsigned value = luapeek->peek(address, num_bytes, luapeek->ud);

  FUNC1(L, value);
  return 1;
}