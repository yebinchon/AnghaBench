#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cn_username ;
struct TYPE_6__ {TYPE_1__* subject_name; } ;
typedef  TYPE_2__ X ;
struct TYPE_5__ {int /*<<< orphan*/  CommonName; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHTYPE_OPENVPN_CERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int) ; 

PACK *FUNC9(char *hubname, char *username, X *x)
{
	PACK *p;
	char cn_username[128];
	BUF *cert_buf = NULL;
	// Validate arguments
	if (hubname == NULL || username == NULL || x == NULL)
	{
		return NULL;
	}

	p = FUNC3();
	FUNC6(p, "method", "login");
	FUNC6(p, "hubname", hubname);

	if (FUNC2(username))
	{
		if (x->subject_name == NULL)
		{
			FUNC1(p);
			return NULL;
		}
		FUNC7(cn_username, sizeof(cn_username), x->subject_name->CommonName);
		FUNC6(p, "username", cn_username);
	}
	else
	{
		FUNC6(p, "username", username);
	}

	FUNC5(p, "authtype", AUTHTYPE_OPENVPN_CERT);

	cert_buf = FUNC8(x, false);
	FUNC4(p, "cert", cert_buf);
	FUNC0(cert_buf);

	return p;
}