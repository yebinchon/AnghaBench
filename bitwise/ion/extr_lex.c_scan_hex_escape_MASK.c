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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* char_to_digit ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* stream ; 

int FUNC2(void) {
    FUNC0(*stream == 'x');
    stream++;
    int val = char_to_digit[(unsigned char)*stream];
    if (!val && *stream != '0') {
        FUNC1("\\x needs at least 1 hex digit");
    }
    stream++;
    int digit = char_to_digit[(unsigned char)*stream];
    if (digit || *stream == '0') {
        val *= 16;
        val += digit;
        if (val > 0xFF) {
            FUNC1("\\x argument out of range");
            val = 0xFF;
        }
        stream++;
    }
    return val;
}