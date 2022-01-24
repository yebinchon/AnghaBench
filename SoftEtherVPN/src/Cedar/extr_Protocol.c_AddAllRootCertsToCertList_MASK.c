#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ROOT_CERTS_FILENAME ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(LIST *o)
{
	BUF *buf;
	PACK *p;
	UINT num_ok = 0, num_error = 0;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	buf = FUNC10(ROOT_CERTS_FILENAME);
	if (buf == NULL)
	{
		return;
	}

	p = FUNC1(buf);

	if (p != NULL)
	{
		UINT num = FUNC9(p, "cert");
		UINT i;

		for (i = 0;i < num;i++)
		{
			bool ok = false;
			BUF *b = FUNC8(p, "cert", i);

			if (b != NULL)
			{
				X *x = FUNC2(b, false);

				if (x != NULL)
				{
					FUNC0(o, x);

					ok = true;

					FUNC6(x);
				}

				FUNC4(b);
			}

			if (ok)
			{
				num_ok++;
			}
			else
			{
				num_error++;
			}
		}

		FUNC5(p);
	}

	FUNC4(buf);

	FUNC3("AddAllRootCertsToCertList: ok=%u error=%u total_list_len=%u\n", num_ok, num_error, FUNC7(o));
}