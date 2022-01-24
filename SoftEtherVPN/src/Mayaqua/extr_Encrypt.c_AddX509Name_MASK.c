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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int UINT ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MBSTRING_ASC ; 
 int MBSTRING_UTF8 ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC8 (int) ; 
 int /*<<< orphan*/  openssl_lock ; 

bool FUNC9(void *xn, int nid, wchar_t *str)
{
	X509_NAME *x509_name;
	UINT utf8_size;
	BYTE *utf8;
	int encoding_type = MBSTRING_ASC;
	// Validate arguments
	if (xn == NULL || str == NULL)
	{
		return false;
	}

	// Convert to UTF-8
	utf8_size = FUNC0(str);
	if (utf8_size == 0)
	{
		return false;
	}
	utf8 = FUNC8(utf8_size + 1);
	FUNC5(utf8, utf8_size, str);
	utf8[utf8_size] = 0;

	if (FUNC3(utf8) != FUNC4(str))
	{
		encoding_type = MBSTRING_UTF8;
	}

	// Adding
	x509_name = (X509_NAME *)xn;
	FUNC2(openssl_lock);
	{
		FUNC7(x509_name, nid, encoding_type, utf8, utf8_size, -1, 0);
	}
	FUNC6(openssl_lock);
	FUNC1(utf8);

	return true;
}