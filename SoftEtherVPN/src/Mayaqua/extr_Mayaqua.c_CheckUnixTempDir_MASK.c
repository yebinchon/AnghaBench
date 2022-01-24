#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  char* UINT64 ;
struct TYPE_2__ {int /*<<< orphan*/  OsType; } ;
typedef  int /*<<< orphan*/  IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11()
{
	if (FUNC7(FUNC5()->OsType))
	{
		char tmp[128], tmp2[64];
		UINT64 now = FUNC9();
		IO *o;

		FUNC6("/tmp");

		FUNC4(tmp2, sizeof(tmp2), "%I64u", now);

		FUNC4(tmp, sizeof(tmp), "/tmp/.%s", tmp2);

		o = FUNC1(tmp);
		if (o == NULL)
		{
			o = FUNC3(tmp, false);
			if (o == NULL)
			{
				FUNC8("Unable to use /tmp.\n\n");
				FUNC10(0);
			}
		}

		FUNC0(o);

		FUNC2(tmp);
	}
}