#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {scalar_t__ Type; int /*<<< orphan*/  Manufacturer; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  DeviceId; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_SECURE ;
typedef  TYPE_3__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SECURE_IC_CARD ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_ENUM_SECURE t;

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC11(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		CT *ct;
		UINT i;
		wchar_t tmp1[MAX_SIZE];
		wchar_t tmp2[MAX_SIZE];
		wchar_t tmp4[MAX_SIZE];
		wchar_t *tmp3;

		// Success
		ct = FUNC6();
		FUNC5(ct, FUNC12("SEC_COLUMN1"), false);
		FUNC5(ct, FUNC12("SEC_COLUMN2"), false);
		FUNC5(ct, FUNC12("SEC_COLUMN3"), false);
		FUNC5(ct, FUNC12("SEC_COLUMN4"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_CLIENT_ENUM_SECURE_ITEM *e = t.Items[i];

			// ID
			FUNC10(tmp1, e->DeviceId);

			// Device name
			FUNC9(tmp2, sizeof(tmp2), e->DeviceName);

			// Type
			tmp3 = (e->Type == SECURE_IC_CARD) ? FUNC12("SEC_SMART_CARD") : FUNC12("SEC_USB_TOKEN");

			// Manufacturer
			FUNC9(tmp4, sizeof(tmp4), e->Manufacturer);

			FUNC4(ct, tmp1, tmp2, tmp3, tmp4);
		}

		FUNC3(ct, c, true);

		FUNC1(&t);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	// Release of the parameter list
	FUNC7(o);

	return ret;
}