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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ SHA1_SIZE ; 

bool FUNC3(PACK *p, UCHAR *session_key, UINT *session_key_32)
{
	// Validate arguments
	if (p == NULL || session_key == NULL || session_key_32 == NULL)
	{
		return false;
	}

	if (FUNC1(p, "session_key") != SHA1_SIZE)
	{
		return false;
	}
	if (FUNC0(p, "session_key", session_key) == false)
	{
		return false;
	}
	*session_key_32 = FUNC2(p, "session_key_32");

	return true;
}