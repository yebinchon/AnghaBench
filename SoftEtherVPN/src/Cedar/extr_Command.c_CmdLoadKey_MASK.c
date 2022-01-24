#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {char* (* ReadPassword ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_1__ CONSOLE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

K *FUNC11(CONSOLE *c, wchar_t *filename)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || filename == NULL)
	{
		return NULL;
	}

	b = FUNC5(filename);
	if (b == NULL)
	{
		c->Write(c, FUNC6("CMD_LOADCERT_FAILED"));
		return NULL;
	}
	else
	{
		K *key;
		if (FUNC4(b, true) == false)
		{
			key = FUNC0(b, true, FUNC3(b), NULL);
		}
		else
		{
			c->Write(c, FUNC6("CMD_LOADKEY_ENCRYPTED_1"));

			while (true)
			{
				char *pass = c->ReadPassword(c, FUNC6("CMD_LOADKEY_ENCRYPTED_2"));

				if (pass == NULL)
				{
					FUNC2(b);
					return NULL;
				}

				key = FUNC0(b, true, FUNC3(b), pass);
				FUNC1(pass);

				if (key != NULL)
				{
					break;
				}

				c->Write(c, FUNC6("CMD_LOADKEY_ENCRYPTED_3"));
			}
		}

		FUNC2(b);

		return key;
	}
}