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
typedef  void libretrodb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static libretrodb_t *FUNC2(lua_State *L)
{
	void *ud = FUNC1(L, 1, "RarchDB.DB");
	FUNC0(L, ud != NULL, 1, "`RarchDB.DB' expected");
	return ud;
}