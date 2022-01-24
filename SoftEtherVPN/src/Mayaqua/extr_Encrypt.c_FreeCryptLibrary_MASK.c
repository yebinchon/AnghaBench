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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int openssl_inited ; 
 int /*<<< orphan*/ * openssl_lock ; 

void FUNC9()
{
	openssl_inited = false;

	FUNC1(openssl_lock);
	openssl_lock = NULL;
//	RAND_Free_For_SoftEther();
	FUNC7();
#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
#ifdef OPENSSL_FIPS
	FIPS_mode_set(0);
#endif
#ifndef OPENSSL_NO_ENGINE
	FUNC2();
#endif
	FUNC0(1);
	FUNC4();

	FUNC6();

	FUNC3();

#ifndef OPENSSL_NO_COMP
	FUNC8();
#endif
#endif
}