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
struct TYPE_4__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool FUNC4(SOCK *s, HTTP_HEADER *header)
{
	char *str;
	bool ret;
	// Validate arguments
	if (s == NULL || header == NULL)
	{
		return false;
	}

	// Convert to string
	str = FUNC1(header);

	// Transmission
	ret = FUNC2(s, str, FUNC3(str), s->SecureMode);

	FUNC0(str);

	return ret;
}