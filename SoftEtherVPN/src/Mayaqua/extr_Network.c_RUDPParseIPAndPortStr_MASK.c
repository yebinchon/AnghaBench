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
typedef  int /*<<< orphan*/  ipstr ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int /*<<< orphan*/ ) ; 
 size_t INFINITE ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 size_t FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

bool FUNC8(void *data, UINT data_size, IP *ip, UINT *port)
{
	char tmp[MAX_SIZE];
	UINT i;
	char ipstr[MAX_SIZE];
	char *portstr;
	// Validate arguments
	if (data == NULL || ip == NULL || port == NULL)
	{
		return false;
	}

	FUNC7(tmp, sizeof(tmp));

	FUNC0(tmp, data, FUNC1(data_size, sizeof(tmp) - 1));

	if (FUNC3(tmp, "IP=") == false)
	{
		return false;
	}

	i = FUNC2(tmp, "#", 0, true);
	if (i != INFINITE)
	{
		tmp[i] = 0;
	}

	FUNC4(ipstr, sizeof(ipstr), tmp + 3);

	i = FUNC2(ipstr, ",PORT=", 0, true);
	if (i == INFINITE)
	{
		return false;
	}

	ipstr[i] = 0;
	portstr = ipstr + i + 6;

	FUNC5(ip, ipstr);
	*port = FUNC6(portstr);

	return true;
}