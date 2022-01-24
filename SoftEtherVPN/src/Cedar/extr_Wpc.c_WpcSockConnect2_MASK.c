#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t2 ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_6__ {char* HostName; char* ProxyHostName; char* ProxyUsername; char* ProxyPassword; char* CustomHttpHeader; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  Port; } ;
typedef  TYPE_1__ WPC_CONNECT ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ INTERNET_SETTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

SOCK *FUNC3(char *hostname, UINT port, INTERNET_SETTING *t, UINT *error_code, UINT timeout)
{
	// Validate arguments
	INTERNET_SETTING t2;
	WPC_CONNECT c;
	if (t == NULL)
	{
		FUNC2(&t2, sizeof(t2));

		t = &t2;
	}

	FUNC2(&c, sizeof(c));
	FUNC0(c.HostName, sizeof(c.HostName), hostname);
	c.Port = port;
	c.ProxyType = t->ProxyType;
	FUNC0(c.ProxyHostName, sizeof(c.HostName), t->ProxyHostName);
	c.ProxyPort = t->ProxyPort;
	FUNC0(c.ProxyUsername, sizeof(c.ProxyUsername), t->ProxyUsername);
	FUNC0(c.ProxyPassword, sizeof(c.ProxyPassword), t->ProxyPassword);
	FUNC0(c.CustomHttpHeader, sizeof(c.CustomHttpHeader), t->CustomHttpHeader);

	return FUNC1(&c, error_code, timeout);
}