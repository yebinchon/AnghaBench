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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NID_key_usage ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

X509_EXTENSION *FUNC4()
{
	X509_EXTENSION *ret = NULL;
	ASN1_BIT_STRING *str;

	str = FUNC1();
	if (str != NULL)
	{
		FUNC2(str, 0);	// KU_DIGITAL_SIGNATURE
		FUNC2(str, 1);	// KU_NON_REPUDIATION
		FUNC2(str, 2);	// KU_KEY_ENCIPHERMENT
		FUNC2(str, 3);	// KU_DATA_ENCIPHERMENT
		//BitStringSetBit(str, 4);	// KU_KEY_AGREEMENT
		FUNC2(str, 5);	// KU_KEY_CERT_SIGN
		FUNC2(str, 6);	// KU_CRL_SIGN

		ret = FUNC3(NID_key_usage, 0, str);

		FUNC0(str);
	}

	return ret;
}