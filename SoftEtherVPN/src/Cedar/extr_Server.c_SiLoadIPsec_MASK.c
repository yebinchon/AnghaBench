#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sl ;
typedef  int /*<<< orphan*/  d ;
typedef  size_t UINT ;
struct TYPE_13__ {int /*<<< orphan*/  Password; int /*<<< orphan*/  UserName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Id; void* EtherIP_IPsec; void* L2TP_IPsec; void* L2TP_Raw; int /*<<< orphan*/  L2TP_DefaultHub; int /*<<< orphan*/  IPsec_Secret; } ;
struct TYPE_12__ {scalar_t__ ServerType; int /*<<< orphan*/  IPsecServer; } ;
struct TYPE_11__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ IPSEC_SERVICES ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_3__ ETHERIP_ID ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 

void FUNC13(SERVER *s, FOLDER *f)
{
	IPSEC_SERVICES sl;
	FOLDER *list_folder;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	FUNC12(&sl, sizeof(sl));

	FUNC5(f, "IPsec_Secret", sl.IPsec_Secret, sizeof(sl.IPsec_Secret));
	FUNC5(f, "L2TP_DefaultHub", sl.L2TP_DefaultHub, sizeof(sl.L2TP_DefaultHub));

	if (s->ServerType == SERVER_TYPE_STANDALONE)
	{
		// IPsec feature only be enabled on a standalone server
		sl.L2TP_Raw = FUNC2(f, "L2TP_Raw");
		sl.L2TP_IPsec = FUNC2(f, "L2TP_IPsec");
		sl.EtherIP_IPsec = FUNC2(f, "EtherIP_IPsec");
	}

	FUNC10(s->IPsecServer, &sl);

	list_folder = FUNC4(f, "EtherIP_IDSettingsList");

	if (list_folder != NULL)
	{
		TOKEN_LIST *t = FUNC1(list_folder);
		if (t != NULL)
		{
			UINT i;

			for (i = 0;i < t->NumTokens;i++)
			{
				char *name = t->Token[i];
				FOLDER *f = FUNC4(list_folder, name);

				if (f != NULL)
				{
					ETHERIP_ID d;
					BUF *b;

					FUNC12(&d, sizeof(d));

					FUNC11(d.Id, sizeof(d.Id), name);
					FUNC5(f, "HubName", d.HubName, sizeof(d.HubName));
					FUNC5(f, "UserName", d.UserName, sizeof(d.UserName));

					b = FUNC3(f, "EncryptedPassword");
					if (b != NULL)
					{
						char *pass = FUNC6(b);

						FUNC11(d.Password, sizeof(d.Password), pass);

						FUNC7(pass);

						FUNC0(s->IPsecServer, &d);

						FUNC8(b);
					}
				}
			}

			FUNC9(t);
		}
	}
}