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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2 (lua_State *L) {
	FUNC0 (L, "_COPYRIGHT");
	FUNC0 (L, "Copyright (c) 2010 Oracle");
	FUNC1 (L, -3);
	FUNC0 (L, "_DESCRIPTION");
	FUNC0 (L, "export glib2-functions as glib.*");
	FUNC1 (L, -3);
	FUNC0 (L, "_VERSION");
	FUNC0 (L, "LuaGlib2 0.1");
	FUNC1 (L, -3);
}