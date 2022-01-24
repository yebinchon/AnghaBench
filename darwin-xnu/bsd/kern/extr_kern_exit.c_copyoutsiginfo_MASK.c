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
typedef  int /*<<< orphan*/  user_siginfo_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  user64_siginfo_t ;
typedef  int /*<<< orphan*/  user32_siginfo_t ;
typedef  int /*<<< orphan*/  sinfo64 ;
typedef  int /*<<< orphan*/  sinfo32 ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(user_siginfo_t *native, boolean_t is64, user_addr_t uaddr)
{
	if (is64) {
		user64_siginfo_t sinfo64;

		FUNC0(&sinfo64, sizeof (sinfo64));
		FUNC3(native, &sinfo64);
		return (FUNC1(&sinfo64, uaddr, sizeof (sinfo64)));
	} else {
		user32_siginfo_t sinfo32;

		FUNC0(&sinfo32, sizeof (sinfo32));
		FUNC2(native, &sinfo32);
		return (FUNC1(&sinfo32, uaddr, sizeof (sinfo32)));
	}
}