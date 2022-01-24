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
typedef  int /*<<< orphan*/  tmp ;
typedef  int UCHAR ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (char*) ; 
 int TCP_ACK ; 
 int TCP_FIN ; 
 int TCP_PSH ; 
 int TCP_RST ; 
 int TCP_SYN ; 
 int TCP_URG ; 

char *FUNC4(UCHAR flag)
{
	char tmp[MAX_SIZE];
	FUNC2(tmp, sizeof(tmp), "");

	if (flag & TCP_FIN)
	{
		FUNC1(tmp, sizeof(tmp), "FIN+");
	}

	if (flag & TCP_SYN)
	{
		FUNC1(tmp, sizeof(tmp), "SYN+");
	}

	if (flag & TCP_RST)
	{
		FUNC1(tmp, sizeof(tmp), "RST+");
	}

	if (flag & TCP_PSH)
	{
		FUNC1(tmp, sizeof(tmp), "PSH+");
	}

	if (flag & TCP_ACK)
	{
		FUNC1(tmp, sizeof(tmp), "ACK+");
	}

	if (flag & TCP_URG)
	{
		FUNC1(tmp, sizeof(tmp), "URG+");
	}

	if (FUNC3(tmp) >= 1)
	{
		if (tmp[FUNC3(tmp) - 1] == '+')
		{
			tmp[FUNC3(tmp) - 1] = 0;
		}
	}

	return FUNC0(tmp);
}