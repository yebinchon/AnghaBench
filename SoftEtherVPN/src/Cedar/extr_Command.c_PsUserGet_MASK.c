#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_28__ {char* RadiusUsername; } ;
struct TYPE_27__ {char* CommonName; TYPE_1__* Serial; } ;
struct TYPE_26__ {int /*<<< orphan*/ * UserX; } ;
struct TYPE_25__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_24__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; } ;
struct TYPE_23__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_22__ {char* HubName; char* Name; char* Realname; char* Note; char* GroupName; int AuthType; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/ * AuthData; int /*<<< orphan*/  ExpireTime; } ;
struct TYPE_21__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ RPC_SET_USER ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_5__ CONSOLE ;
typedef  TYPE_6__ AUTHUSERCERT ;
typedef  TYPE_7__ AUTHROOTCERT ;
typedef  TYPE_8__ AUTHRADIUS ;

/* Variables and functions */
#define  AUTHTYPE_NT 131 
#define  AUTHTYPE_RADIUS 130 
#define  AUTHTYPE_ROOTCERT 129 
#define  AUTHTYPE_USERCERT 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_5__*,char*,char*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 char* FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*,char*) ; 

UINT FUNC26(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_SET_USER t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", CmdPrompt, FUNC22("CMD_UserCreate_Prompt_NAME"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC22("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC14(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC21(&t, sizeof(t));
	// Get the user object
	FUNC17(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC17(t.Name, sizeof(t.Name), FUNC11(o, "[name]"));

	ret = FUNC16(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC2(c, ret);
		FUNC6(o);
		return ret;
	}
	else
	{
		wchar_t tmp[MAX_SIZE];
		CT *ct;

		// Display the user's data
		ct = FUNC5();

		// User name
		FUNC18(tmp, sizeof(tmp), t.Name);
		FUNC4(ct, FUNC22("CMD_UserGet_Column_Name"), tmp);

		// Real name
		FUNC4(ct, FUNC22("CMD_UserGet_Column_RealName"), t.Realname);

		// Description
		FUNC4(ct, FUNC22("CMD_UserGet_Column_Note"), t.Note);

		// Group name
		if (FUNC12(t.GroupName) == false)
		{
			FUNC18(tmp, sizeof(tmp), t.GroupName);
			FUNC4(ct, FUNC22("CMD_UserGet_Column_Group"), tmp);
		}

		// Expiration date
		FUNC10(tmp, sizeof(tmp), FUNC19(t.ExpireTime), NULL);
		FUNC4(ct, FUNC22("CMD_UserGet_Column_Expires"), tmp);

		// Authentication method
		FUNC4(ct, FUNC22("CMD_UserGet_Column_AuthType"), FUNC9(t.AuthType));

		switch (t.AuthType)
		{
		case AUTHTYPE_USERCERT:
			if (t.AuthData != NULL)
			{
				AUTHUSERCERT *auc = (AUTHUSERCERT *)t.AuthData;

				if (auc != NULL && auc->UserX != NULL)
				{
					// Registered user-specific certificate
					FUNC8(tmp, sizeof(tmp), auc->UserX);
					FUNC4(ct, FUNC22("CMD_UserGet_Column_UserCert"), tmp);
				}
			}
			break;

		case AUTHTYPE_ROOTCERT:
			if (t.AuthData != NULL)
			{
				AUTHROOTCERT *arc = (AUTHROOTCERT *)t.AuthData;

				if (FUNC13(arc->CommonName) == false)
				{
					// Limitation the value of the certificate's CN
					FUNC4(ct, FUNC22("CMD_UserGet_Column_RootCert_CN"), arc->CommonName);
				}

				if (arc->Serial != NULL && arc->Serial->size >= 1)
				{
					char tmp2[MAX_SIZE];

					// Limitation the serial number of the certificate
					FUNC0(tmp2, sizeof(tmp2), arc->Serial->data, arc->Serial->size);
					FUNC18(tmp, sizeof(tmp), tmp2);
					FUNC4(ct, FUNC22("CMD_UserGet_Column_RootCert_SERIAL"), tmp);
				}
			}
			break;

		case AUTHTYPE_RADIUS:
		case AUTHTYPE_NT:
			if (t.AuthData != NULL)
			{
				AUTHRADIUS *ar = (AUTHRADIUS *)t.AuthData;

				// Authentication user name of the external authentication server
				if (FUNC13(ar->RadiusUsername) == false)
				{
					FUNC4(ct, FUNC22("CMD_UserGet_Column_RadiusAlias"), ar->RadiusUsername);
				}
			}
			break;
		}

		FUNC4(ct, L"---", L"---");

		FUNC10(tmp, sizeof(tmp), FUNC19(t.CreatedTime), NULL);
		FUNC4(ct, FUNC22("SM_USERINFO_CREATE"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC19(t.UpdatedTime), NULL);
		FUNC4(ct, FUNC22("SM_USERINFO_UPDATE"), tmp);

		FUNC1(ct, &t.Traffic);

		FUNC20(tmp, t.NumLogin);
		FUNC4(ct, FUNC22("SM_USERINFO_NUMLOGIN"), tmp);


		FUNC3(ct, c);

		if (t.Policy != NULL)
		{
			c->Write(c, L"");
			c->Write(c, FUNC22("CMD_UserGet_Policy"));
			FUNC15(c, t.Policy, false);
		}
	}

	FUNC7(&t);

	FUNC6(o);

	return 0;
}