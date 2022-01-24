#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  pin ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ SECURE_DEVICE ;
typedef  int /*<<< orphan*/  SECURE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16()
{
	UINT i;
	LIST *secure_device_list;
	FUNC10("Secure Device Test Program\n"
		"Copyright (c) SoftEther Corporation. All Rights Reserved.\n\n");

	// Get the secure device list
	secure_device_list = FUNC3();
	if (secure_device_list != NULL)
	{
		UINT use_device_id;
		char tmp[MAX_SIZE];
		FUNC10("--- Secure Device List ---\n");
		for (i = 0;i < FUNC5(secure_device_list);i++)
		{
			SECURE_DEVICE *dev = FUNC4(secure_device_list, i);
			FUNC10("%2u - %s\n", dev->Id, dev->DeviceName);
		}
		FUNC10("\n");
		FUNC10("Device ID >");
		FUNC2(tmp, sizeof(tmp));
		use_device_id = FUNC14(tmp);
		if (use_device_id == 0)
		{
			FUNC10("Canceled.\n");
		}
		else
		{
			SECURE *sec = FUNC8(use_device_id);
			FUNC10("Opening Device...\n");
			if (sec == NULL)
			{
				FUNC10("OpenSec() Failed.\n");
			}
			else
			{
				FUNC10("Opening Session...\n");
				if (FUNC9(sec, 0) == false)
				{
					FUNC10("OpenSecSession() Failed.\n");
				}
				else
				{
					while (true)
					{
						char pin[MAX_SIZE];
						FUNC10("PIN Code >");
						FUNC2(pin, sizeof(pin));
						FUNC15(pin);
						if (FUNC12(pin) == 0)
						{
							FUNC10("Canceled.\n");
							break;
						}
						else
						{
							FUNC10("Login...\n");
							if (FUNC6(sec, pin))
							{
								FUNC13(sec);
								FUNC10("Logout...\n");
								FUNC7(sec);
								break;
							}
							else
							{
								FUNC10("Login Failed. Please Try Again.\n");
							}
						}
					}
					FUNC10("Closing Session...\n");
					FUNC1(sec);
				}
				FUNC10("Closing Device...\n");
				FUNC0(sec);
			}
		}
		FUNC11(secure_device_list);
	}
	else
	{
		FUNC10("GetSecureDeviceList() Error.\n");
	}
}