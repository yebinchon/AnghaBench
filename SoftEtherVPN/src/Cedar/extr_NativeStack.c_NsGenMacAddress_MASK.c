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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NS_MAC_ADDRESS_BYTE_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(void *dest, char *mac_address_seed, char *device_name)
{
	char tmp[MAX_SIZE];
	UCHAR mac[6];
	UCHAR hash[SHA1_SIZE];

	FUNC7(tmp, sizeof(tmp));

	FUNC3(tmp, sizeof(tmp), mac_address_seed);
	FUNC3(tmp, sizeof(tmp), "@");
	FUNC3(tmp, sizeof(tmp), device_name);

	FUNC6(tmp);

	FUNC5(tmp);

	FUNC2(hash, tmp, FUNC4(tmp));

	mac[0] = NS_MAC_ADDRESS_BYTE_1;
	mac[1] = hash[1];
	mac[2] = hash[2];
	mac[3] = hash[3];
	mac[4] = hash[4];
	mac[5] = hash[5];

	FUNC1(mac + 4, mac);

	FUNC0(dest, mac, 6);
}