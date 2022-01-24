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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int TCP_FASTOPEN_KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tfo_ctx ; 

__attribute__((used)) static void
FUNC2(void)
{
	u_char key[TCP_FASTOPEN_KEYLEN];

	FUNC1(key, sizeof(key));
	FUNC0(key, &tfo_ctx);
}