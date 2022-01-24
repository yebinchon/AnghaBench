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
struct TYPE_3__ {void* NoSaveConfig; void* NoSaveLog; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(CLIENT *c)
{
	LIST *o;
	//char *log;
	//char *config;

	if (c == NULL)
	{
		return;
	}

	o = FUNC1();

	if (o == NULL)
	{
		return;
	}

	/*log = IniStrValue(o, "NoSaveLog");
	config = IniStrValue(o, "NoSaveConfig");

	if(StrCmpi(log, "true") == 0)
	{
		c->NoSaveLog = true;
	}
	if(StrCmpi(config, "true") == 0)
	{
		c->NoSaveConfig = true;
	}*/

	c->NoSaveLog = FUNC3(FUNC2(o, "NoSaveLog"));
	c->NoSaveConfig = FUNC3(FUNC2(o, "NoSaveConfig"));
	
	FUNC0(o);

}