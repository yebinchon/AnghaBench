#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {void* Buf; int /*<<< orphan*/  Size; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_CERT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 

PACK *FUNC6(char *hubname, char *username, X *x, void *sign, UINT sign_size)
{
	PACK *p;
	BUF *b;
	// Validate arguments
	if (hubname == NULL || username == NULL)
	{
		return NULL;
	}

	p = FUNC1();
	FUNC4(p, "method", "login");
	FUNC4(p, "hubname", hubname);
	FUNC4(p, "username", username);
	FUNC3(p, "authtype", CLIENT_AUTHTYPE_CERT);

	// Certificate
	b = FUNC5(x, false);
	FUNC2(p, "cert", b->Buf, b->Size);
	FUNC0(b);

	// Signature data
	FUNC2(p, "sign", sign, sign_size);

	return p;
}