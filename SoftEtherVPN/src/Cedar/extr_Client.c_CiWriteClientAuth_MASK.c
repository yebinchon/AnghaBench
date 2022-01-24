#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_8__ {int AuthType; int /*<<< orphan*/  SecurePrivateKeyName; int /*<<< orphan*/  SecurePublicCertName; int /*<<< orphan*/ * ClientK; int /*<<< orphan*/ * ClientX; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  Username; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_AUTH ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
#define  CLIENT_AUTHTYPE_ANONYMOUS 132 
#define  CLIENT_AUTHTYPE_CERT 131 
#define  CLIENT_AUTHTYPE_PASSWORD 130 
#define  CLIENT_AUTHTYPE_PLAIN_PASSWORD 129 
#define  CLIENT_AUTHTYPE_SECURE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(FOLDER *f, CLIENT_AUTH *a)
{
	BUF *b;
	// Validate arguments
	if (f == NULL || a == NULL)
	{
		return;
	}

	FUNC1(f, "AuthType", a->AuthType);
	FUNC2(f, "Username", a->Username);

	switch (a->AuthType)
	{
	case CLIENT_AUTHTYPE_ANONYMOUS:
		break;

	case CLIENT_AUTHTYPE_PASSWORD:
		FUNC0(f, "HashedPassword", a->HashedPassword, SHA1_SIZE);
		break;

	case CLIENT_AUTHTYPE_PLAIN_PASSWORD:
		b = FUNC3(a->PlainPassword);
		FUNC0(f, "EncryptedPassword", b->Buf, b->Size);
		FUNC4(b);
		break;

	case CLIENT_AUTHTYPE_CERT:
		if (a->ClientK != NULL && a->ClientX != NULL)
		{
			b = FUNC6(a->ClientX, false);
			FUNC0(f, "ClientCert", b->Buf, b->Size);
			FUNC4(b);

			b = FUNC5(a->ClientK, false, NULL);
			FUNC0(f, "ClientKey", b->Buf, b->Size);
			FUNC4(b);
		}
		break;

	case CLIENT_AUTHTYPE_SECURE:
		FUNC2(f, "SecurePublicCertName", a->SecurePublicCertName);
		FUNC2(f, "SecurePrivateKeyName", a->SecurePrivateKeyName);
		break;
	}
}