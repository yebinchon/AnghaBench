#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  realname ;
typedef  int /*<<< orphan*/  note ;
typedef  int /*<<< orphan*/  md4_password ;
typedef  int /*<<< orphan*/  hashed_password ;
typedef  int /*<<< orphan*/  groupname ;
typedef  int /*<<< orphan*/  common_name ;
typedef  int /*<<< orphan*/  X_SERIAL ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_24__ {int NumLogin; int /*<<< orphan*/  lock; void* LastLoginTime; void* ExpireTime; void* UpdatedTime; void* CreatedTime; } ;
typedef  TYPE_1__ USER ;
typedef  void* UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_26__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_25__ {char* Name; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  HUB ;
typedef  TYPE_2__ FOLDER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
#define  AUTHTYPE_NT 132 
#define  AUTHTYPE_PASSWORD 131 
#define  AUTHTYPE_RADIUS 130 
#define  AUTHTYPE_ROOTCERT 129 
#define  AUTHTYPE_USERCERT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC7 (TYPE_2__*,char*) ; 
 int FUNC8 (TYPE_2__*,char*) ; 
 void* FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int MD5_SIZE ; 
 void* FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC19 (int /*<<< orphan*/ *) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*) ; 
 void* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 

void FUNC33(HUB *h, FOLDER *f)
{
	char *username;
	wchar_t realname[MAX_SIZE];
	wchar_t note[MAX_SIZE];
	char groupname[MAX_SIZE];
	FOLDER *pf;
	UINT64 created_time;
	UINT64 updated_time;
	UINT64 expire_time;
	UINT64 last_login_time;
	UINT num_login;
	POLICY p;
	TRAFFIC t;
	BUF *b;
	UINT authtype;
	void *authdata;
	X_SERIAL *serial = NULL;
	wchar_t common_name[MAX_SIZE];
	UCHAR hashed_password[SHA1_SIZE];
	UCHAR md4_password[MD5_SIZE];
	wchar_t tmp[MAX_SIZE];
	USER *u;
	USERGROUP *g;
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	username = f->Name;
	FUNC11(f, "RealName", realname, sizeof(realname));
	FUNC11(f, "Note", note, sizeof(note));
	FUNC10(f, "GroupName", groupname, sizeof(groupname));

	created_time = FUNC9(f, "CreatedTime");
	updated_time = FUNC9(f, "UpdatedTime");
	expire_time = FUNC9(f, "ExpireTime");
	last_login_time = FUNC9(f, "LastLoginTime");
	num_login = FUNC8(f, "NumLogin");
	pf = FUNC7(f, "Policy");
	if (pf != NULL)
	{
		FUNC28(&p, pf);
	}
	FUNC29(f, "Traffic", &t);

	authtype = FUNC8(f, "AuthType");
	authdata = NULL;

	switch (authtype)
	{
	case AUTHTYPE_PASSWORD:
		FUNC32(hashed_password, sizeof(hashed_password));
		FUNC32(md4_password, sizeof(md4_password));
		FUNC6(f, "AuthPassword", hashed_password, sizeof(hashed_password));
		FUNC6(f, "AuthNtLmSecureHash", md4_password, sizeof(md4_password));
		authdata = FUNC18(hashed_password, md4_password);
		break;

	case AUTHTYPE_NT:
		if (FUNC11(f, "AuthNtUserName", tmp, sizeof(tmp)))
		{
			authdata = FUNC17(tmp);
		}
		else
		{
			authdata = FUNC17(NULL);
		}
		break;

	case AUTHTYPE_RADIUS:
		if (FUNC11(f, "AuthRadiusUsername", tmp, sizeof(tmp)))
		{
			authdata = FUNC19(tmp);
		}
		else
		{
			authdata = FUNC19(NULL);
		}
		break;

	case AUTHTYPE_USERCERT:
		b = FUNC5(f, "AuthUserCert");
		if (b != NULL)
		{
			X *x = FUNC4(b, false);
			if (x != NULL)
			{
				authdata = FUNC22(x);
				FUNC13(x);
			}
			FUNC12(b);
		}
		break;

	case AUTHTYPE_ROOTCERT:
		b = FUNC5(f, "AuthSerial");
		if (b != NULL)
		{
			serial = FUNC23(b->Buf, b->Size);
			FUNC12(b);
		}
		FUNC11(f, "AuthCommonName", common_name, sizeof(common_name));
		authdata = FUNC20(serial, common_name);
		break;
	}

	// Add an user
	FUNC2(h);
	{
		if (FUNC30(groupname) > 0)
		{
			g = FUNC1(h, groupname);
		}
		else
		{
			g = NULL;
		}

		u = FUNC21(username, realname, note, authtype, authdata);
		if (u != NULL)
		{
			if (g != NULL)
			{
				FUNC15(u, g);
			}

			FUNC27(u, &t);

			if (pf != NULL)
			{
				FUNC26(u, &p);
			}

			FUNC16(u->lock);
			{
				u->CreatedTime = created_time;
				u->UpdatedTime = updated_time;
				u->ExpireTime = expire_time;
				u->LastLoginTime = last_login_time;
				u->NumLogin = num_login;
			}
			FUNC31(u->lock);

			FUNC0(h, u);

			FUNC25(u);
		}

		if (g != NULL)
		{
			FUNC24(g);
		}
	}
	FUNC3(h);

	if (serial != NULL)
	{
		FUNC14(serial);
	}
}