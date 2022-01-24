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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PACKET_LOG_ALL ; 
 int /*<<< orphan*/  PACKET_LOG_HEADER ; 
 int /*<<< orphan*/  PACKET_LOG_NONE ; 
 scalar_t__ FUNC1 (char*,char*) ; 

UINT FUNC2(char *str)
{
	UINT ret = INFINITE;
	if (str == NULL)
	{
		return INFINITE;
	}

	if (FUNC1("none", str) || FUNC0(str))
	{
		ret = PACKET_LOG_NONE;
	}
	else if (FUNC1("header", str))
	{
		ret = PACKET_LOG_HEADER;
	}
	else if (FUNC1("full", str) || FUNC1("all", str))
	{
		ret = PACKET_LOG_ALL;
	}

	return ret;
}