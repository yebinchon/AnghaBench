#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_16__ {TYPE_2__* Server; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  String; } ;
struct TYPE_13__ {TYPE_4__* Cedar; } ;
struct TYPE_12__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_STR ;
typedef  TYPE_4__ CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 

UINT FUNC11(ADMIN *a, RPC_STR *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;

	FUNC0(t);
	FUNC10(t, sizeof(RPC_STR));

	FUNC3(c->lock);
	{
		UINT i;
		TOKEN_LIST *ciphers = FUNC2();
		if (ciphers->NumTokens > 0)
		{
			UINT size = FUNC8(ciphers->Token[0]);
			t->String = FUNC4(size);
			FUNC7(t->String, size, ciphers->Token[0]);
			i = 1;

			for (; i < ciphers->NumTokens; i++)
			{
				// We use StrSize() because we need the extra space for ';'
				size += FUNC8(ciphers->Token[i]);
				t->String = FUNC5(t->String, size);
				FUNC6(t->String, size, ";");
				FUNC6(t->String, size, ciphers->Token[i]);
			}
		}

		FUNC1(ciphers);
	}
	FUNC9(c->lock);

	return ERR_NO_ERROR;
}