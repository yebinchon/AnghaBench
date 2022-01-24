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
typedef  int /*<<< orphan*/  guchar ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_MD5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
	size_t str_len;
	const char *str = FUNC4 (L, 1, &str_len);
	GChecksum *cs;

	cs = FUNC2(G_CHECKSUM_MD5);

	FUNC3(cs, (guchar *)str, str_len);

	FUNC5(L, FUNC1(cs));

	FUNC0(cs);

	return 1;
}