#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {TYPE_1__* Serial; int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; TYPE_2__* Name; } ;
struct TYPE_6__ {int /*<<< orphan*/  Local; int /*<<< orphan*/  State; int /*<<< orphan*/  Country; int /*<<< orphan*/  Unit; int /*<<< orphan*/  Organization; int /*<<< orphan*/  CommonName; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ NAME ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_3__ CRL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MD5_SIZE ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(FOLDER *f, LIST *o)
{
	// Validate arguments
	if (f == NULL || o == NULL)
	{
		return;
	}

	FUNC8(o);
	{
		UINT i;
		for (i = 0;i < FUNC7(o);i++)
		{
			char name[MAX_SIZE];
			CRL *crl = FUNC6(o, i);
			FOLDER *ff;
			NAME *n;

			FUNC4(name, sizeof(name), "Crl%u", i);

			ff = FUNC3(f, name);
			n = crl->Name;

			if (FUNC9(n->CommonName) == false)
			{
				FUNC2(ff, "CommonName", n->CommonName);
			}

			if (FUNC9(n->Organization) == false)
			{
				FUNC2(ff, "Organization", n->Organization);
			}

			if (FUNC9(n->Unit) == false)
			{
				FUNC2(ff, "Unit", n->Unit);
			}

			if (FUNC9(n->Country) == false)
			{
				FUNC2(ff, "Country", n->Country);
			}

			if (FUNC9(n->State) == false)
			{
				FUNC2(ff, "State", n->State);
			}

			if (FUNC9(n->Local) == false)
			{
				FUNC2(ff, "Local", n->Local);
			}

			if (FUNC5(crl->DigestMD5, MD5_SIZE) == false)
			{
				char tmp[MAX_SIZE];

				FUNC0(tmp, sizeof(tmp), crl->DigestMD5, MD5_SIZE);
				FUNC1(ff, "DigestMD5", tmp);
			}

			if (FUNC5(crl->DigestSHA1, SHA1_SIZE) == false)
			{
				char tmp[MAX_SIZE];

				FUNC0(tmp, sizeof(tmp), crl->DigestSHA1, SHA1_SIZE);
				FUNC1(ff, "DigestSHA1", tmp);
			}

			if (crl->Serial != NULL)
			{
				char tmp[MAX_SIZE];

				FUNC0(tmp, sizeof(tmp), crl->Serial->data, crl->Serial->size);
				FUNC1(ff, "Serial", tmp);
			}
		}
	}
	FUNC10(o);
}