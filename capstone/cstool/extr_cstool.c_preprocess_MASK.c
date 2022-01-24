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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static uint8_t *FUNC4(char *code, size_t *size)
{
	size_t i = 0, j = 0;
	uint8_t high, low;
	uint8_t *result;

	if (FUNC3(code) == 0)
		return NULL;

	result = (uint8_t *)FUNC2(FUNC3(code));
	if (result != NULL) {
		while (code[i] != '\0') {
			if (FUNC1(code[i]) && FUNC1(code[i+1])) {
				high = 16 * FUNC0(code[i]);
				low = FUNC0(code[i+1]);
				result[j] = high + low;
				i++;
				j++;
			}
			i++;
		}
		*size = j;
	}

	return result;
}