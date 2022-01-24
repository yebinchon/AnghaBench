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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	uint data = FUNC1();
	char buffer[40];
	uint first;
	uint run_length;
	uint i;

	buffer[0] = 0;
	for(i=0;i<8;i++)
	{
		if(data&(1<<(15-i)))
		{
			first = i;
			run_length = 0;
			while(i<7 && (data&(1<<(15-(i+1)))))
			{
				i++;
				run_length++;
			}
			if(buffer[0] != 0)
				FUNC3(buffer, "/");
			FUNC2(buffer+FUNC4(buffer), "D%d", first);
			if(run_length > 0)
				FUNC2(buffer+FUNC4(buffer), "-D%d", first + run_length);
		}
	}
	for(i=0;i<8;i++)
	{
		if(data&(1<<(7-i)))
		{
			first = i;
			run_length = 0;
			while(i<7 && (data&(1<<(7-(i+1)))))
			{
				i++;
				run_length++;
			}
			if(buffer[0] != 0)
				FUNC3(buffer, "/");
			FUNC2(buffer+FUNC4(buffer), "A%d", first);
			if(run_length > 0)
				FUNC2(buffer+FUNC4(buffer), "-A%d", first + run_length);
		}
	}
	FUNC2(g_dasm_str, "movem.w %s, %s", buffer, FUNC0(g_cpu_ir));
}