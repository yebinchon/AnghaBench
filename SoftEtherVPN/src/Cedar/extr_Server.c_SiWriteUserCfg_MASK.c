#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int NumLogin; int AuthType; int /*<<< orphan*/  lock; int /*<<< orphan*/ * AuthData; int /*<<< orphan*/  Traffic; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  GroupName; int /*<<< orphan*/ * Group; int /*<<< orphan*/ * Note; int /*<<< orphan*/ * RealName; } ;
typedef  TYPE_2__ USER ;
struct TYPE_15__ {int /*<<< orphan*/ * NtUsername; } ;
struct TYPE_14__ {int /*<<< orphan*/  NtLmSecureHash; int /*<<< orphan*/  HashedKey; } ;
struct TYPE_13__ {int /*<<< orphan*/ * RadiusUsername; } ;
struct TYPE_12__ {int /*<<< orphan*/ * CommonName; TYPE_1__* Serial; } ;
struct TYPE_11__ {int /*<<< orphan*/  UserX; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;
typedef  TYPE_3__ AUTHUSERCERT ;
typedef  TYPE_4__ AUTHROOTCERT ;
typedef  TYPE_5__ AUTHRADIUS ;
typedef  TYPE_6__ AUTHPASSWORD ;
typedef  TYPE_7__ AUTHNT ;

/* Variables and functions */
#define  AUTHTYPE_ANONYMOUS 133 
#define  AUTHTYPE_NT 132 
#define  AUTHTYPE_PASSWORD 131 
#define  AUTHTYPE_RADIUS 130 
#define  AUTHTYPE_ROOTCERT 129 
#define  AUTHTYPE_USERCERT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int) ; 

void FUNC15(FOLDER *f, USER *u)
{
	BUF *b;
	AUTHPASSWORD *password;
	AUTHRADIUS *radius;
	AUTHNT *nt;
	AUTHUSERCERT *usercert;
	AUTHROOTCERT *rootcert;
	// Validate arguments
	if (f == NULL || u == NULL)
	{
		return;
	}

	FUNC9(u->lock);
	{
		FUNC5(f, "RealName", u->RealName);
		FUNC5(f, "Note", u->Note);
		if (u->Group != NULL)
		{
			FUNC4(f, "GroupName", u->GroupName);
		}
		FUNC3(f, "CreatedTime", u->CreatedTime);
		FUNC3(f, "UpdatedTime", u->UpdatedTime);
		FUNC3(f, "ExpireTime", u->ExpireTime);
		FUNC3(f, "LastLoginTime", u->LastLoginTime);
		FUNC2(f, "NumLogin", u->NumLogin);
		if (u->Policy != NULL)
		{
			FUNC10(FUNC6(f, "Policy"), u->Policy, false);
		}
		FUNC11(f, "Traffic", u->Traffic);

		FUNC2(f, "AuthType", u->AuthType);
		if (u->AuthData != NULL)
		{
			switch (u->AuthType)
			{
			case AUTHTYPE_ANONYMOUS:
				break;

			case AUTHTYPE_PASSWORD:
				password = (AUTHPASSWORD *)u->AuthData;
				FUNC1(f, "AuthPassword", password->HashedKey, sizeof(password->HashedKey));

				if (FUNC8(password->NtLmSecureHash, sizeof(password->NtLmSecureHash)) == false)
				{
					FUNC1(f, "AuthNtLmSecureHash", password->NtLmSecureHash, sizeof(password->NtLmSecureHash));
				}
				break;

			case AUTHTYPE_NT:
				nt = (AUTHNT *)u->AuthData;
				FUNC5(f, "AuthNtUserName", nt->NtUsername);
				break;

			case AUTHTYPE_RADIUS:
				radius = (AUTHRADIUS *)u->AuthData;
				FUNC5(f, "AuthRadiusUsername", radius->RadiusUsername);
				break;

			case AUTHTYPE_USERCERT:
				usercert = (AUTHUSERCERT *)u->AuthData;
				b = FUNC14(usercert->UserX, false);
				if (b != NULL)
				{
					FUNC0(f, "AuthUserCert", b);
					FUNC7(b);
				}
				break;

			case AUTHTYPE_ROOTCERT:
				rootcert = (AUTHROOTCERT *)u->AuthData;
				if (rootcert->Serial != NULL && rootcert->Serial->size >= 1)
				{
					FUNC1(f, "AuthSerial", rootcert->Serial->data, rootcert->Serial->size);
				}
				if (rootcert->CommonName != NULL && FUNC12(rootcert->CommonName) == false)
				{
					FUNC5(f, "AuthCommonName", rootcert->CommonName);
				}
				break;
			}
		}
	}
	FUNC13(u->lock);
}