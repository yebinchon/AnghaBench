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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hashtemp ;
typedef  int /*<<< orphan*/  hashstr ;
typedef  int /*<<< orphan*/  exe ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MAX_SIZE ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNICODE_CACHE_FILE ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(wchar_t *name, UINT size, wchar_t *strfilename, UINT strfilesize, UCHAR *filehash)
{
	wchar_t tmp[MAX_SIZE];
	wchar_t hashstr[64];
	wchar_t hashtemp[MAX_SIZE];
	wchar_t exe[MAX_SIZE];
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (name == NULL || strfilename == NULL || filehash == NULL)
	{
		return;
	}

	FUNC1(exe, sizeof(exe));
	FUNC8(hashtemp, sizeof(hashtemp), strfilename);
	FUNC0(tmp, sizeof(tmp), filehash, MD5_SIZE);
	FUNC7(hashtemp, sizeof(hashtemp), tmp);
	FUNC7(hashtemp, sizeof(hashtemp), exe);
	FUNC10(hashtemp);

	FUNC4(hash, hashtemp, FUNC9(hashtemp) * sizeof(wchar_t));
	FUNC0(hashstr, sizeof(hashstr), hash, 4);
	FUNC6(tmp, sizeof(tmp), UNICODE_CACHE_FILE, hashstr);
	FUNC10(tmp);

#ifndef	OS_WIN32
	FUNC8(exe, sizeof(exe), L"/tmp");
#else	// OS_WIN32
	StrToUni(exe, sizeof(exe), MsGetTempDir());
#endif	// OS_WIN32

	FUNC6(name, size, L"%s/%s", exe, tmp);
	FUNC3(name, size, name);
}