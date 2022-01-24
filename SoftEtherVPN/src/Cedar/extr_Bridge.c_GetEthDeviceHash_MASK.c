#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {size_t Num; TYPE_1__** Adapters; } ;
struct TYPE_9__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
struct TYPE_8__ {int /*<<< orphan*/  Title; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ MS_ADAPTER_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

UINT FUNC8()
{
#ifdef	OS_UNIX
	// UNIX
	UINT num = 0;
	UINT i;
	char tmp[4096];
	UCHAR hash[SHA1_SIZE];
	TOKEN_LIST *t = GetEthList();

	tmp[0] = 0;

	if (t != NULL)
	{
		num = t->NumTokens;
		for (i = 0; i < t->NumTokens; i++)
		{
			StrCat(tmp, sizeof(tmp), t->Token[i]);
		}
		FreeToken(t);
	}

	Sha0(hash, tmp, StrLen(tmp));

	Copy(&num, hash, sizeof(UINT));

	return num;
#else	// OS_UNIX
	// Win32
	UINT ret = 0;
	MS_ADAPTER_LIST *a = FUNC3(true);
	UINT num;
	UINT i;
	char tmp[4096];
	UCHAR hash[SHA1_SIZE];

	tmp[0] = 0;
	if (a != NULL)
	{
		for (i = 0;i < a->Num;i++)
		{
			FUNC6(tmp, sizeof(tmp), a->Adapters[i]->Title);
		}
	}
	FUNC4(a);

	FUNC5(hash, tmp, FUNC7(tmp));

	FUNC0(&num, hash, sizeof(UINT));

	return num;
#endif	// OS_UNIX
}