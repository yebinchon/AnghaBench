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
typedef  int UINT ;
typedef  int /*<<< orphan*/  LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  OpenSSL_Id ; 
 int /*<<< orphan*/  OpenSSL_Lock ; 
 int ssl_lock_num ; 
 int /*<<< orphan*/ * ssl_lock_obj ; 

void FUNC5()
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
	UINT i;

	// Initialization of the lock object
	ssl_lock_num = FUNC1();
	ssl_lock_obj = FUNC3(sizeof(LOCK *) * ssl_lock_num);
	for (i = 0;i < ssl_lock_num;i++)
	{
		ssl_lock_obj[i] = FUNC4();
	}

	// Setting the lock function
	FUNC2(OpenSSL_Lock);
	FUNC0(OpenSSL_Id);
#endif
}