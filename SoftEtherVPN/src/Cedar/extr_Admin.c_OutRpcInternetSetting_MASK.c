#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyHostName; int /*<<< orphan*/  ProxyType; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ INTERNET_SETTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC2(PACK *p, INTERNET_SETTING *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "ProxyType", t->ProxyType);
	FUNC1(p, "ProxyHostName", t->ProxyHostName);
	FUNC0(p, "ProxyPort", t->ProxyPort);
	FUNC1(p, "ProxyUsername", t->ProxyUsername);
	FUNC1(p, "ProxyPassword", t->ProxyPassword);
	FUNC1(p, "CustomHttpHeader", t->CustomHttpHeader);
}