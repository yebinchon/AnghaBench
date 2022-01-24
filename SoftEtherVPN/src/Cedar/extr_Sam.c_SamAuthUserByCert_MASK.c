#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_27__ {int /*<<< orphan*/  serial; TYPE_1__* subject_name; } ;
typedef  TYPE_3__ X ;
struct TYPE_28__ {scalar_t__ AuthType; int /*<<< orphan*/  lock; scalar_t__ AuthData; } ;
typedef  TYPE_4__ USER ;
struct TYPE_31__ {TYPE_17__* Serial; int /*<<< orphan*/ * CommonName; } ;
struct TYPE_30__ {int /*<<< orphan*/  UserX; } ;
struct TYPE_29__ {TYPE_2__* HubDb; } ;
struct TYPE_26__ {int /*<<< orphan*/  RootCertList; } ;
struct TYPE_25__ {int /*<<< orphan*/  CommonName; } ;
struct TYPE_24__ {int size; } ;
typedef  TYPE_5__ HUB ;
typedef  TYPE_6__ AUTHUSERCERT ;
typedef  TYPE_7__ AUTHROOTCERT ;

/* Variables and functions */
 scalar_t__ AUTHTYPE_ROOTCERT ; 
 scalar_t__ AUTHTYPE_USERCERT ; 
 TYPE_4__* FUNC0 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_17__*) ; 
 int /*<<< orphan*/  GSF_DISABLE_CERT_AUTH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

bool FUNC18(HUB *h, char *username, X *x)
{
	bool b = false;
	// Validate arguments
	if (h == NULL || username == NULL || x == NULL)
	{
		return false;
	}

	if (FUNC7(GSF_DISABLE_CERT_AUTH) != 0)
	{
		return false;
	}

	// Check expiration date
	if (FUNC3(x) == false)
	{
		return false;
	}

	// Check the Certification Revocation List
	if (FUNC10(h, x) == false)
	{
		// Bad
		wchar_t tmp[MAX_SIZE * 2];

		// Log the contents of the certificate
		FUNC6(tmp, sizeof(tmp), x);

		FUNC9(h, "LH_AUTH_NG_CERT", username, tmp);
		return false;
	}

	FUNC1(h);
	{
		USER *u;
		u = FUNC0(h, username);
		if (u)
		{
			FUNC11(u->lock);
			{
				if (u->AuthType == AUTHTYPE_USERCERT)
				{
					// Check whether to matche with the registered certificate
					AUTHUSERCERT *auth = (AUTHUSERCERT *)u->AuthData;
					if (FUNC4(auth->UserX, x))
					{
						b = true;
					}
				}
				else if (u->AuthType == AUTHTYPE_ROOTCERT)
				{
					// Check whether the certificate has been signed by the root certificate
					AUTHROOTCERT *auth = (AUTHROOTCERT *)u->AuthData;
					if (h->HubDb != NULL)
					{
						FUNC12(h->HubDb->RootCertList);
						{
							X *root_cert;
							root_cert = FUNC8(h->HubDb->RootCertList, x);
							if (root_cert != NULL)
							{
								b = true;
								if (auth->CommonName != NULL && FUNC14(auth->CommonName) == false)
								{
									// Compare the CN
									if (FUNC15(x->subject_name->CommonName, auth->CommonName) != 0)
									{
										b = false;
									}
								}
								if (auth->Serial != NULL && auth->Serial->size >= 1)
								{
									// Compare the serial number
									if (FUNC5(x->serial, auth->Serial) == false)
									{
										b = false;
									}
								}
							}
						}
						FUNC17(h->HubDb->RootCertList);
					}
				}
			}
			FUNC16(u->lock);
			FUNC13(u);
		}
	}
	FUNC2(h);

	if (b)
	{
		wchar_t tmp[MAX_SIZE * 2];

		// Log the contents of the certificate
		FUNC6(tmp, sizeof(tmp), x);

		FUNC9(h, "LH_AUTH_OK_CERT", username, tmp);
	}

	return b;
}