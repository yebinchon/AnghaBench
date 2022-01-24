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
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {void* pData; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ INSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int MAX_SIZE ; 
 void* FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int) ; 

INSTANCE *FUNC5(char *instance_name, bool user_local)
{
	char name[MAX_SIZE];
	INSTANCE *ret;
	void *data;

	if (instance_name != NULL)
	{
		if (user_local == false)
		{
			FUNC1(name, sizeof(name), instance_name);
		}
		else
		{
			FUNC2(name, sizeof(name), instance_name);
		}

		data = FUNC3(name);
	}
	else
	{
		data = FUNC3(NULL);
	}

	if (data == NULL)
	{
		return NULL;
	}

	ret = FUNC4(sizeof(INSTANCE));
	if (instance_name != NULL)
	{
		ret->Name = FUNC0(instance_name);
	}

	ret->pData = data;

	return ret;
}