#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_6__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  FileList; } ;
typedef  TYPE_2__ ENUM_DIR_WITH_SUB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 void* FUNC7 (int) ; 

UNI_TOKEN_LIST *FUNC8(wchar_t *dirname)
{
	ENUM_DIR_WITH_SUB_DATA d;
	UNI_TOKEN_LIST *ret;
	UINT i;
	// Validate arguments
	if (dirname == NULL)
	{
		dirname = L"./";
	}

	FUNC6(&d, sizeof(d));

	d.FileList = FUNC4(NULL);

	FUNC0(&d, dirname);

	ret = FUNC7(sizeof(UNI_TOKEN_LIST));

	ret->NumTokens = FUNC3(d.FileList);
	ret->Token = FUNC7(sizeof(wchar_t *) * ret->NumTokens);

	for (i = 0;i < ret->NumTokens;i++)
	{
		wchar_t *s = FUNC2(d.FileList, i);

		ret->Token[i] = FUNC5(s);
	}

	FUNC1(d.FileList);

	return ret;
}