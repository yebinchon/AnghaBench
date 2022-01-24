#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rand_data ;
typedef  int /*<<< orphan*/  now ;
typedef  int UINT64 ;
typedef  int UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int) ; 

void FUNC6(UCHAR *mac)
{
	UCHAR rand_data[32];
	UINT64 now;
	BUF *b;
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (mac == NULL)
	{
		return;
	}

	// Get the current time
	now = FUNC4();

	// Generate a random number
	FUNC2(rand_data, sizeof(rand_data));

	// Add to the buffer
	b = FUNC1();
	FUNC5(b, &now, sizeof(now));
	FUNC5(b, rand_data, sizeof(rand_data));

	// Hash
	FUNC3(hash, b->Buf, b->Size);

	// Generate a MAC address
	mac[0] = 0x5E;
	mac[1] = hash[0];
	mac[2] = hash[1];
	mac[3] = hash[2];
	mac[4] = hash[3];
	mac[5] = hash[4];

	FUNC0(b);
}