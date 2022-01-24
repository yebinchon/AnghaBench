#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double float_val; int /*<<< orphan*/  suffix; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 double HUGE_VAL ; 
 int /*<<< orphan*/  SUFFIX_D ; 
 int /*<<< orphan*/  TOKEN_FLOAT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char) ; 
 char* stream ; 
 double FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ token ; 
 char FUNC3 (char) ; 

void FUNC4(void) {
    const char *start = stream;
    while (FUNC1(*stream)) {
        stream++;
    }
    if (*stream == '.') {
        stream++;
    }
    while (FUNC1(*stream)) {
        stream++;
    }
    if (FUNC3(*stream) == 'e') {
        stream++;
        if (*stream == '+' || *stream == '-') {
            stream++;
        }
        if (!FUNC1(*stream)) {
            FUNC0("Expected digit after float literal exponent, found '%c'.", *stream);
        }
        while (FUNC1(*stream)) {
            stream++;
        }
    }
    double val = FUNC2(start, NULL);
    if (val == HUGE_VAL) {
        FUNC0("Float literal overflow");
    }
    token.kind = TOKEN_FLOAT;
    token.float_val = val;
    if (FUNC3(*stream) == 'd') {
        token.suffix = SUFFIX_D;
        stream++;
    }
}