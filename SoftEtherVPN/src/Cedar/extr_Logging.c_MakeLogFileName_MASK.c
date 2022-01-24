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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  tag ;
typedef  unsigned long long UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  LOG ;

/* Variables and functions */
 unsigned long long FUNC0 () ; 
 unsigned long long MAX_LOG_SIZE_DEFAULT ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

bool FUNC6(LOG *g, char *name, UINT size, char *dir, char *prefix, UINT64 tick, UINT switch_type, UINT num, char *old_datestr)
{
	char tmp[MAX_SIZE];
	char tmp2[64];
	bool ret = false;
	// Validate arguments
	if (g == NULL || name == NULL || prefix == NULL || old_datestr == NULL)
	{
		return false;
	}

	FUNC1(g, tmp, sizeof(tmp), tick, switch_type);

	if (num == 0)
	{
		tmp2[0] = 0;
	}
	else
	{
		UINT64 max_log_size = FUNC0();
		if (max_log_size == MAX_LOG_SIZE_DEFAULT)
		{
			FUNC4(tmp2, sizeof(tmp2), "~%02u", num);
		}
		else
		{
			char tag[32];
			char c = '2';
			if (max_log_size >= 1000000000ULL)
			{
				c = '3';
			}
			else if (max_log_size >= 100000000ULL)
			{
				c = '4';
			}
			else if (max_log_size >= 10000000ULL)
			{
				c = '5';
			}
			else if (max_log_size >= 1000000ULL)
			{
				c = '6';
			}
			else if (max_log_size >= 100000ULL)
			{
				c = '7';
			}
			else if (max_log_size >= 10000ULL)
			{
				c = '8';
			}
			else if (max_log_size >= 1000ULL)
			{
				c = '9';
			}

			FUNC2(tag, sizeof(tag), "~%02u");
			tag[3] = c;

			FUNC4(tmp2, sizeof(tmp2), tag, num);
		}
	}

	if (FUNC5(old_datestr, tmp) != 0)
	{
		ret = true;
		FUNC2(old_datestr, MAX_SIZE, tmp);
	}

	FUNC4(name, size, "%s%s%s%s%s.log", dir,
		FUNC3(dir) == 0 ? "" : "/",
		prefix, tmp, tmp2
		);

	return ret;
}