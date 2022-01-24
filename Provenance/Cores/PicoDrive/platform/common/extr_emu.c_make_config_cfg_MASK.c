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

/* Variables and functions */
 int /*<<< orphan*/  PicoConfigFile ; 
 scalar_t__ config_slot ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(char *cfg_buff_512)
{
	FUNC0(cfg_buff_512, PicoConfigFile, 512-6);
	if (config_slot != 0)
	{
		char *p = FUNC3(cfg_buff_512, '.');
		if (p == NULL)
			p = cfg_buff_512 + FUNC2(cfg_buff_512);
		FUNC1(p, ".%i.cfg", config_slot);
	}
	cfg_buff_512[511] = 0;
}