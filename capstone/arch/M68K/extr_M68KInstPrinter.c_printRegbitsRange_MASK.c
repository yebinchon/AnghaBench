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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char* buffer, uint32_t data, const char* prefix)
{
	unsigned int first = 0;
	unsigned int run_length = 0;
	int i;

	for (i = 0; i < 8; ++i) {
		if (data & (1 << i)) {
			first = i;
			run_length = 0;

			while (i < 7 && (data & (1 << (i + 1)))) {
				i++;
				run_length++;
			}

			if (buffer[0] != 0)
				FUNC1(buffer, "/");

			FUNC0(buffer + FUNC2(buffer), "%s%d", prefix, first);
			if (run_length > 0)
				FUNC0(buffer + FUNC2(buffer), "-%s%d", prefix, first + run_length);
		}
	}
}