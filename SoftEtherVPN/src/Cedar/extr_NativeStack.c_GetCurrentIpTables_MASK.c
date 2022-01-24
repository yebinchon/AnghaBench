#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  current_chain ;
typedef  size_t UINT ;
struct TYPE_11__ {char* Chain; char* ConditionAndArgs; scalar_t__ LineNumber; } ;
struct TYPE_10__ {int /*<<< orphan*/  EntryList; } ;
struct TYPE_9__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ IPTABLES_STATE ;
typedef  TYPE_3__ IPTABLES_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 void* FUNC9 (int) ; 

IPTABLES_STATE *FUNC10()
{
	IPTABLES_STATE *ret = NULL;
	TOKEN_LIST *t = NULL;

#ifdef	OS_UNIX
	t = UnixExec("iptables -L -x -n --line-numbers");
#endif	// OS_UNIX

	if (t != NULL)
	{
		UINT i;
		UINT tmp_num = 0;

		for (i = 0;i < t->NumTokens;i++)
		{
			char *line = t->Token[i];
			if (FUNC4(line, "Chain INPUT") ||
				FUNC4(line, "Chain FORWARD") ||
				FUNC4(line, "Chain OUTPUT"))
			{
				tmp_num++;
			}
		}

		if (tmp_num >= 3)
		{
			char current_chain[64];
			UINT mode = 0;

			FUNC8(current_chain, sizeof(current_chain));

			for (i = 0;i < t->NumTokens;i++)
			{
				char *line = t->Token[i];

				if (FUNC4(line, "Chain"))
				{
					TOKEN_LIST *t2 = FUNC3(line, " \t");
					if (t2 != NULL)
					{
						if (t2->NumTokens >= 4)
						{
							FUNC5(current_chain, sizeof(current_chain), t2->Token[1]);
							mode = 1;

							if (ret == NULL)
							{
								ret = FUNC9(sizeof(IPTABLES_STATE));
								ret->EntryList = FUNC2(NULL);
							}

						}
						FUNC1(t2);
					}
				}

				if (mode == 1)
				{
					if (FUNC4(line, "num"))
					{
						mode = 2;
					}
				}
				else if (mode == 2)
				{
					TOKEN_LIST *t2 = FUNC3(line, " \t");
					if (t2 != NULL)
					{
						if (t2->NumTokens >= 6 && FUNC6(t2->Token[0]) != 0)
						{
							IPTABLES_ENTRY *e = FUNC9(sizeof(IPTABLES_ENTRY));

							FUNC5(e->Chain, sizeof(e->Chain), current_chain);
							e->LineNumber = FUNC6(t2->Token[0]);
							FUNC5(e->ConditionAndArgs, sizeof(e->ConditionAndArgs), line);

							FUNC0(ret->EntryList, e);
						}

						FUNC1(t2);
					}
				}
			}
		}

		FUNC1(t);
	}

	return ret;
}