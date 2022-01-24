#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  line; } ;
struct TYPE_4__ {char* str_val; int /*<<< orphan*/  kind; int /*<<< orphan*/  mod; TYPE_1__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_MULTILINE ; 
 int /*<<< orphan*/  TOKEN_STR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* escape_to_char ; 
 char FUNC3 () ; 
 char* stream ; 
 TYPE_2__ token ; 

void FUNC4(void) {
    FUNC0(*stream == '"');
    stream++;
    char *str = NULL;
    if (stream[0] == '"' && stream[1] == '"') {
        stream += 2;
        while (*stream) {
            if (stream[0] == '"' && stream[1] == '"' && stream[2] == '"') {
                stream += 3;
                break;
            }
            if (*stream != '\r') {
                // TODO: Should probably just read files in text mode instead.
                FUNC1(str, *stream);
            }
            if (*stream == '\n') {
                token.pos.line++;
            }
            stream++;
        }
        if (!*stream) {
            FUNC2("Unexpected end of file within multi-line string literal");
        }
        token.mod = MOD_MULTILINE;
    } else {
        while (*stream && *stream != '"') {
            char val = *stream;
            if (val == '\n') {
                FUNC2("String literal cannot contain newline");
                break;
            } else if (val == '\\') {
                stream++;
                if (*stream == 'x') {
                    val = FUNC3();
                } else {
                    val = escape_to_char[(unsigned char)*stream];
                    if (val == 0 && *stream != '0') {
                        FUNC2("Invalid string literal escape '\\%c'", *stream);
                    }
                    stream++;
                }
            } else {
                stream++;
            }
            FUNC1(str, val);
        }
        if (*stream) {
            stream++;
        } else {
            FUNC2("Unexpected end of file within string literal");
        }
    }
    FUNC1(str, 0);
    token.kind = TOKEN_STR;
    token.str_val = str;
}