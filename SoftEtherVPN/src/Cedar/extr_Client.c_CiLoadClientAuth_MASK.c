#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int AuthType; int /*<<< orphan*/  SecurePrivateKeyName; int /*<<< orphan*/  SecurePublicCertName; int /*<<< orphan*/  ClientK; int /*<<< orphan*/  ClientX; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  Username; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_AUTH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
#define  CLIENT_AUTHTYPE_ANONYMOUS 132 
#define  CLIENT_AUTHTYPE_CERT 131 
#define  CLIENT_AUTHTYPE_PASSWORD 130 
#define  CLIENT_AUTHTYPE_PLAIN_PASSWORD 129 
#define  CLIENT_AUTHTYPE_SECURE 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC10 (int) ; 

CLIENT_AUTH *FUNC11(FOLDER *f)
{
	CLIENT_AUTH *a;
	char *s;
	BUF *b;
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	a = FUNC10(sizeof(CLIENT_AUTH));

	a->AuthType = FUNC4(f, "AuthType");
	FUNC5(f, "Username", a->Username, sizeof(a->Username));

	switch (a->AuthType)
	{
	case CLIENT_AUTHTYPE_ANONYMOUS:
		break;

	case CLIENT_AUTHTYPE_PASSWORD:
		FUNC3(f, "HashedPassword", a->HashedPassword, SHA1_SIZE);
		break;

	case CLIENT_AUTHTYPE_PLAIN_PASSWORD:
		b = FUNC2(f, "EncryptedPassword");
		if (b != NULL)
		{
			s = FUNC6(b);
			FUNC9(a->PlainPassword, sizeof(a->PlainPassword), s);
			FUNC7(s);
			FUNC8(b);
		}
		break;

	case CLIENT_AUTHTYPE_CERT:
		b = FUNC2(f, "ClientCert");
		if (b != NULL)
		{
			a->ClientX = FUNC1(b, false);
		}
		FUNC8(b);
		b = FUNC2(f, "ClientKey");
		if (b != NULL)
		{
			a->ClientK = FUNC0(b, true, false, NULL);
		}
		FUNC8(b);
		break;

	case CLIENT_AUTHTYPE_SECURE:
		FUNC5(f, "SecurePublicCertName", a->SecurePublicCertName, sizeof(a->SecurePublicCertName));
		FUNC5(f, "SecurePrivateKeyName", a->SecurePrivateKeyName, sizeof(a->SecurePrivateKeyName));
		break;
	}

	return a;
}