#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  X ;
struct TYPE_7__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

bool FUNC9(CONSOLE *c, X **xx, K **kk, wchar_t *cert_filename, wchar_t *key_filename)
{
	X *x;
	K *k;
	// Validate arguments
	if (c == NULL || cert_filename == NULL || key_filename == NULL || xx == NULL || kk == NULL)
	{
		return false;
	}

	x = FUNC2(cert_filename);
	if (x == NULL)
	{
		c->Write(c, FUNC5("CMD_LOADCERT_FAILED"));
		return false;
	}

	k = FUNC1(c, key_filename);
	if (k == NULL)
	{
		c->Write(c, FUNC5("CMD_LOADKEY_FAILED"));
		FUNC4(x);
		return false;
	}

	if (FUNC0(x, k) == false)
	{
		c->Write(c, FUNC5("CMD_KEYPAIR_FAILED"));
		FUNC4(x);
		FUNC3(k);

		return false;
	}

	*xx = x;
	*kk = k;

	return true;
}