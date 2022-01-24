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
typedef  int /*<<< orphan*/  LOCK ;

/* Variables and functions */
 int CRYPTO_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** ssl_lock_obj ; 

void FUNC2(int mode, int n, const char *file, int line)
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
	LOCK *lock = ssl_lock_obj[n];

	if (mode & CRYPTO_LOCK)
	{
		// Lock
		FUNC0(lock);
	}
	else
	{
		// Unlock
		FUNC1(lock);
	}
#endif
}