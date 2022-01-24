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
typedef  int /*<<< orphan*/  p ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; TYPE_1__* Cedar; } ;
struct TYPE_10__ {int /*<<< orphan*/  NewHostname; } ;
struct TYPE_9__ {int /*<<< orphan*/  Server; } ;
typedef  TYPE_2__ DDNS_REGISTER_PARAM ;
typedef  int /*<<< orphan*/  DDNS_CLIENT_STATUS ;
typedef  TYPE_3__ DDNS_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERR_DDNS_HOSTNAME_TOO_LONG ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

UINT FUNC6(DDNS_CLIENT *c, char *hostname)
{
	UINT ret;
	DDNS_REGISTER_PARAM p;
	// Validate arguments
	if (c == NULL || hostname == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	if (FUNC4(hostname) > 32)
	{
		// The host name is too long
		return ERR_DDNS_HOSTNAME_TOO_LONG;
	}

	FUNC5(&p, sizeof(p));

	FUNC3(p.NewHostname, sizeof(p.NewHostname), hostname);

	// Use one of IPv4 or IPv6 if it seems to be communication
	if (c->Err_IPv4 == ERR_NO_ERROR)
	{
		// IPv4
		ret = FUNC1(c, false, &p, NULL);
	}
	else if (c->Err_IPv6 == ERR_NO_ERROR)
	{
		// IPv6
		ret = FUNC1(c, true, &p, NULL);
	}
	else
	{
		// Try both
		ret = FUNC1(c, true, &p, NULL);
		if (ret != ERR_NO_ERROR)
		{
			ret = FUNC1(c, false, &p, NULL);
		}
	}

	if (ret == ERR_NO_ERROR)
	{
		DDNS_CLIENT_STATUS st;

		FUNC0(c, &st);

		FUNC2(c->Cedar->Server, &st);
	}

	return ret;
}