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
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t ssl_lock_num ; 
 int /*<<< orphan*/ * ssl_lock_obj ; 

void FUNC4()
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
	UINT i;

	for (i = 0;i < ssl_lock_num;i++)
	{
		FUNC2(ssl_lock_obj[i]);
	}
	FUNC3(ssl_lock_obj);
	ssl_lock_obj = NULL;

	FUNC1(NULL);
	FUNC0(NULL);
#endif
}