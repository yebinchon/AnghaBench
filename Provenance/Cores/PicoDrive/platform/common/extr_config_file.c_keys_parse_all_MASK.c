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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

__attribute__((used)) static void FUNC11(FILE *f)
{
	char line[256], *var, *val;
	int dev_id = -1;
	int acts, type;
	int ret;

	while (!FUNC1(f))
	{
		ret = FUNC0(f, line, sizeof(line), &var, &val);
		if (ret ==  0) break;
		if (ret == -1) continue;

		if (FUNC9(var, "binddev") == 0) {
			dev_id = FUNC3(val);
			if (dev_id < 0) {
				FUNC8("input: can't handle dev: %s\n", val);
				continue;
			}
			FUNC4(dev_id, -1, -1);
			continue;
		}
		if (dev_id < 0 || FUNC10(var, "bind ", 5) != 0)
			continue;

		acts = FUNC7(val, &type);
		if (acts == -1) {
			FUNC5("config: unhandled action \"%s\"\n", val);
			return;
		}

		FUNC6(var + 5);
		FUNC2(dev_id, var + 5, acts, type);
	}
}