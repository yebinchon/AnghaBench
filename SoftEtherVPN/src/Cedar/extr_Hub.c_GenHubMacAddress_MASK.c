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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  hash ;
typedef  int UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int MAX_SIZE ; 
 int SE_HUB_MAC_ADDR_SIGN ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(UCHAR *mac, char *name)
{
	char tmp1[MAX_SIZE];
	char tmp2[MAX_SIZE];
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (mac == NULL || name == NULL)
	{
		return;
	}

	FUNC4(tmp1, sizeof(tmp1), name);
	FUNC7(tmp1);
	FUNC1(hash);
	FUNC0(tmp2, sizeof(tmp2), hash, sizeof(hash));
	FUNC3(tmp2, sizeof(tmp2), tmp1);
	FUNC6(tmp2);

	FUNC2(hash, tmp2, FUNC5(tmp2));

	mac[0] = 0x00;
	mac[1] = SE_HUB_MAC_ADDR_SIGN;
	mac[2] = hash[0];
	mac[3] = hash[1];
	mac[4] = hash[2];
	mac[5] = hash[3];
}