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
struct TYPE_3__ {int AuthType; int /*<<< orphan*/  SecurePrivateKeyName; int /*<<< orphan*/  SecurePublicCertName; int /*<<< orphan*/  ClientK; int /*<<< orphan*/  ClientX; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  Username; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CLIENT_AUTH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
#define  CLIENT_AUTHTYPE_ANONYMOUS 132 
#define  CLIENT_AUTHTYPE_CERT 131 
#define  CLIENT_AUTHTYPE_PASSWORD 130 
#define  CLIENT_AUTHTYPE_PLAIN_PASSWORD 129 
#define  CLIENT_AUTHTYPE_SECURE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(PACK *p, CLIENT_AUTH *c)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "AuthType", c->AuthType);
	FUNC5(p, "Username", c->Username);

	switch (c->AuthType)
	{
	case CLIENT_AUTHTYPE_ANONYMOUS:
		break;

	case CLIENT_AUTHTYPE_PASSWORD:
		FUNC3(p, "HashedPassword", c->HashedPassword, SHA1_SIZE);
		break;

	case CLIENT_AUTHTYPE_PLAIN_PASSWORD:
		FUNC5(p, "PlainPassword", c->PlainPassword);
		break;

	case CLIENT_AUTHTYPE_CERT:
		b = FUNC6(c->ClientX, false);
		if (b != NULL)
		{
			FUNC2(p, "ClientX", b);
			FUNC0(b);
		}
		b = FUNC1(c->ClientK, false, NULL);
		if (b != NULL)
		{
			FUNC2(p, "ClientK", b);
			FUNC0(b);
		}
		break;

	case CLIENT_AUTHTYPE_SECURE:
		FUNC5(p, "SecurePublicCertName", c->SecurePublicCertName);
		FUNC5(p, "SecurePrivateKeyName", c->SecurePrivateKeyName);
		break;
	}
}