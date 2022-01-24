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
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,char const*,size_t,char const*,size_t) ; 

__attribute__((used)) static int FUNC3(lua_State *L) {
	size_t challenge_len;
	const char *challenge = FUNC0(L, 1, &challenge_len);
	size_t response_len;
	const char *response = FUNC0(L, 2, &response_len);
	size_t dbl_hashed_password_len;
	const char *dbl_hashed_password = FUNC0(L, 3, &dbl_hashed_password_len);

	FUNC1(L, FUNC2(
			challenge, challenge_len,
			response, response_len,
			dbl_hashed_password, dbl_hashed_password_len));
	
	return 1;
}