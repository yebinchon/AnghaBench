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
struct IP {int dummy; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int MAX_SIZE ; 
 int FUNC1 (struct IP*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct IP*,int) ; 

bool FUNC3(FOLDER *f, char *name, struct IP *ip)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (f == NULL || name == NULL || ip == NULL)
	{
		return false;
	}

	FUNC2(ip, sizeof(IP));

	if (FUNC0(f, name, tmp, sizeof(tmp)) == false)
	{
		return false;
	}

	if (FUNC1(ip, tmp) == false)
	{
		return false;
	}

	return true;
}