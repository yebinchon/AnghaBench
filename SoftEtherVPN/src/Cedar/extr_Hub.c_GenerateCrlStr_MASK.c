#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  uni ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_5__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; TYPE_1__* Serial; int /*<<< orphan*/ * Name; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CRL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MD5_SIZE ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int FUNC8 (char*) ; 

wchar_t *FUNC9(CRL *crl)
{
	wchar_t tmp[2048];
	// Validate arguments
	if (crl == NULL)
	{
		return NULL;
	}

	FUNC7(tmp, sizeof(tmp), L"");

	if (crl->Name != NULL)
	{
		// Name information
		wchar_t name[MAX_SIZE];

		FUNC6(tmp, sizeof(tmp), L"Subject=\"");

		FUNC2(name, sizeof(name), crl->Name);
		FUNC6(tmp, sizeof(tmp), name);
		FUNC6(tmp, sizeof(tmp), L"\", ");
	}

	if (crl->Serial != NULL)
	{
		// Serial information
		char str[128];
		wchar_t uni[128];

		FUNC0(str, sizeof(str), crl->Serial->data, crl->Serial->size);
		FUNC4(uni, sizeof(uni), str);
		FUNC6(tmp, sizeof(tmp), L"Serial=\"");
		FUNC6(tmp, sizeof(tmp), uni);
		FUNC6(tmp, sizeof(tmp), L"\", ");
	}

	if (FUNC3(crl->DigestMD5, MD5_SIZE) == false)
	{
		// MD5
		char str[128];
		wchar_t uni[128];

		FUNC0(str, sizeof(str), crl->DigestMD5, MD5_SIZE);
		FUNC4(uni, sizeof(uni), str);
		FUNC6(tmp, sizeof(tmp), L"MD5=\"");
		FUNC6(tmp, sizeof(tmp), uni);
		FUNC6(tmp, sizeof(tmp), L"\", ");
	}

	if (FUNC3(crl->DigestSHA1, SHA1_SIZE) == false)
	{
		// MD5
		char str[128];
		wchar_t uni[128];

		FUNC0(str, sizeof(str), crl->DigestSHA1, SHA1_SIZE);
		FUNC4(uni, sizeof(uni), str);
		FUNC6(tmp, sizeof(tmp), L"SHA1=\"");
		FUNC6(tmp, sizeof(tmp), uni);
		FUNC6(tmp, sizeof(tmp), L"\", ");
	}

	if (FUNC5(tmp, L", "))
	{
		tmp[FUNC8(tmp) - 2] = 0;
	}

	return FUNC1(tmp);
}