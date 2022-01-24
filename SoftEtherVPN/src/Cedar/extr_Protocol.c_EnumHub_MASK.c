#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/ * FirstSock; } ;
struct TYPE_7__ {TYPE_3__* Connection; } ;
struct TYPE_6__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_2__ SESSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* FUNC10 (int) ; 

TOKEN_LIST *FUNC11(SESSION *s)
{
	SOCK *sock;
	TOKEN_LIST *ret;
	PACK *p;
	UINT num;
	UINT i;
	// Validate arguments
	if (s == NULL || s->Connection == NULL)
	{
		return NULL;
	}

	sock = s->Connection->FirstSock;
	if (sock == NULL)
	{
		return NULL;
	}

	// Set the Timeout
	FUNC9(sock, 10000);

	p = FUNC4();
	FUNC6(p, "method", "enum_hub");

	FUNC5(p, s->Connection);

	if (FUNC3(sock, p) == false)
	{
		FUNC1(p);
		return NULL;
	}
	FUNC1(p);

	p = FUNC2(sock);
	if (p == NULL)
	{
		return NULL;
	}

	num = FUNC7(p, "NumHub");
	ret = FUNC10(sizeof(TOKEN_LIST));
	ret->NumTokens = num;
	ret->Token = FUNC10(sizeof(char *) * num);
	for (i = 0;i < num;i++)
	{
		char tmp[MAX_SIZE];
		if (FUNC8(p, "HubName", tmp, sizeof(tmp), i))
		{
			ret->Token[i] = FUNC0(tmp);
		}
	}
	FUNC1(p);

	return ret;
}