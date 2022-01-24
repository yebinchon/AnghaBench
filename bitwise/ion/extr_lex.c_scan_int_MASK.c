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
struct TYPE_2__ {unsigned long long int_val; int /*<<< orphan*/  suffix; int /*<<< orphan*/  kind; int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_BIN ; 
 int /*<<< orphan*/  MOD_HEX ; 
 int /*<<< orphan*/  MOD_OCT ; 
 int /*<<< orphan*/  SUFFIX_L ; 
 int /*<<< orphan*/  SUFFIX_LL ; 
 int /*<<< orphan*/  SUFFIX_U ; 
 int /*<<< orphan*/  SUFFIX_UL ; 
 int /*<<< orphan*/  SUFFIX_ULL ; 
 int /*<<< orphan*/  TOKEN_INT ; 
 int ULLONG_MAX ; 
 int* char_to_digit ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char) ; 
 char* stream ; 
 TYPE_1__ token ; 
 char FUNC2 (char) ; 

void FUNC3(void) {
    int base = 10;
    const char *start_digits = stream;
    if (*stream == '0') {
        stream++;
        if (FUNC2(*stream) == 'x') {
            stream++;
            token.mod = MOD_HEX;
            base = 16;
            start_digits = stream;
        } else if (FUNC2(*stream) == 'b') {
            stream++;
            token.mod = MOD_BIN;
            base = 2;
            start_digits = stream;
        } else if (FUNC1(*stream)) {
            token.mod = MOD_OCT;
            base = 8;
            start_digits = stream;
        }
    }
    unsigned long long val = 0;
    for (;;) {
        if (*stream == '_') {
            stream++;
            continue;
        }
        int digit = char_to_digit[(unsigned char)*stream];
        if (digit == 0 && *stream != '0') {
            break;
        }
        if (digit >= base) {
            FUNC0("Digit '%c' out of range for base %d", *stream, base);
            digit = 0;
        }
        if (val > (ULLONG_MAX - digit)/base) {
            FUNC0("Integer literal overflow");
            while (FUNC1(*stream)) {
                stream++;
            }
            val = 0;
            break;
        }
        val = val*base + digit;
        stream++;
    }
    if (stream == start_digits) {
        FUNC0("Expected base %d digit, got '%c'", base, *stream);
    }
    token.kind = TOKEN_INT;
    token.int_val = val;
    if (FUNC2(*stream) == 'u') {
        token.suffix = SUFFIX_U;
        stream++;
        if (FUNC2(*stream) == 'l') {
            token.suffix = SUFFIX_UL;
            stream++;
            if (FUNC2(*stream) == 'l') {
                token.suffix = SUFFIX_ULL;
                stream++;
            }
        }
    } else if (FUNC2(*stream) == 'l') {
        token.suffix = SUFFIX_L;
        stream++;
        if (FUNC2(*stream) == 'l') {
            token.suffix = SUFFIX_LL;
            stream++;
        }
    }
}