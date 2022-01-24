#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  reserved; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 int NUM_RESERVED ; 
 scalar_t__ TOKEN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * luaX_tokens ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 (lua_State *L) {
  int i;
  for (i=0; i<NUM_RESERVED; i++) {
    TString *ts = FUNC2(L, luaX_tokens[i]);
    FUNC1(ts);  /* reserved words are never collected */
    FUNC3(FUNC4(luaX_tokens[i])+1 <= TOKEN_LEN);
    ts->tsv.reserved = FUNC0(i+1);  /* reserved word */
  }
}