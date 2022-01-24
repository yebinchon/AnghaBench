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
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

bool FUNC7(char *src, bool *check_mac, UCHAR *mac_bin, UCHAR *mask_bin)
{
	TOKEN_LIST *t;
	char *macstr, *maskstr;
	UCHAR mac[6], mask[6];
	bool ok = false;

	// Validate arguments
	if (src == NULL)
	{
		return false;
	}

	//Zero(mac, sizeof(mac));
	//Zero(mask, sizeof(mask));

	if(check_mac != NULL && mac_bin != NULL && mask_bin != NULL)
	{
		ok = true;
	}
	if(FUNC2(src) != false)
	{
		if(ok != false)
		{
			*check_mac = false;
			FUNC6(mac_bin, 6);
			FUNC6(mask_bin, 6);
		}
		return true;
	}

	t = FUNC3(src, "/");
	if(t->NumTokens != 2)
	{
		FUNC1(t);
		return false;
	}

	macstr = t->Token[0];
	maskstr = t->Token[1];

	FUNC5(macstr);
	FUNC5(maskstr);

	if(FUNC4(mac, macstr) == false || FUNC4(mask, maskstr) == false)
	{
		FUNC1(t);
		return false;
	}
	else
	{
		if(ok != false)
		{
			FUNC0(mac_bin, mac, 6);
			FUNC0(mask_bin, mask, 6);
			*check_mac = true;
		}
	}
	FUNC1(t);

	return true;
}