#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  u ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  org ;
typedef  int /*<<< orphan*/  l ;
typedef  int /*<<< orphan*/  cn ;
typedef  int /*<<< orphan*/  c ;
typedef  size_t UINT ;
struct TYPE_12__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; int /*<<< orphan*/  Serial; int /*<<< orphan*/  Name; } ;
struct TYPE_10__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CRL ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 scalar_t__ MD5_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SHA1_SIZE ; 
 TYPE_3__* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int) ; 

void FUNC14(LIST *o, FOLDER *f)
{
	// Validate arguments
	if (o == NULL || f == NULL)
	{
		return;
	}

	FUNC8(o);
	{
		UINT i;
		TOKEN_LIST *t;

		t = FUNC0(f);

		for (i = 0;i < t->NumTokens;i++)
		{
			CRL *crl;
			FOLDER *ff = FUNC1(f, t->Token[i]);
			wchar_t cn[MAX_SIZE], org[MAX_SIZE], u[MAX_SIZE], c[MAX_SIZE],
				st[MAX_SIZE], l[MAX_SIZE];
			char tmp[MAX_SIZE];

			if (ff != NULL)
			{
				BUF *b;

				crl = FUNC13(sizeof(CRL));

				FUNC3(ff, "CommonName", cn, sizeof(cn));
				FUNC3(ff, "Organization", org, sizeof(org));
				FUNC3(ff, "Unit", u, sizeof(u));
				FUNC3(ff, "Country", c, sizeof(c));
				FUNC3(ff, "State", st, sizeof(st));
				FUNC3(ff, "Local", l, sizeof(l));

				crl->Name = FUNC9(cn, org, u, c, st, l);

				if (FUNC2(ff, "Serial", tmp, sizeof(tmp)))
				{
					b = FUNC11(tmp);

					if (b != NULL)
					{
						if (b->Size >= 1)
						{
							crl->Serial = FUNC10(b->Buf, b->Size);
						}

						FUNC5(b);
					}
				}

				if (FUNC2(ff, "DigestMD5", tmp, sizeof(tmp)))
				{
					b = FUNC11(tmp);

					if (b != NULL)
					{
						if (b->Size == MD5_SIZE)
						{
							FUNC4(crl->DigestMD5, b->Buf, MD5_SIZE);
						}

						FUNC5(b);
					}
				}

				if (FUNC2(ff, "DigestSHA1", tmp, sizeof(tmp)))
				{
					b = FUNC11(tmp);

					if (b != NULL)
					{
						if (b->Size == SHA1_SIZE)
						{
							FUNC4(crl->DigestSHA1, b->Buf, SHA1_SIZE);
						}

						FUNC5(b);
					}
				}

				FUNC7(o, crl);
			}
		}

		FUNC6(t);
	}
	FUNC12(o);
}