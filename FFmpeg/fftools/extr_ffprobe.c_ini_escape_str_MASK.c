#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static char *FUNC2(AVBPrint *dst, const char *src)
{
    int i = 0;
    char c = 0;

    while ((c = src[i++])) {
        switch (c) {
        case '\b': FUNC1(dst, "%s", "\\b"); break;
        case '\f': FUNC1(dst, "%s", "\\f"); break;
        case '\n': FUNC1(dst, "%s", "\\n"); break;
        case '\r': FUNC1(dst, "%s", "\\r"); break;
        case '\t': FUNC1(dst, "%s", "\\t"); break;
        case '\\':
        case '#' :
        case '=' :
        case ':' : FUNC0(dst, '\\', 1);
        default:
            if ((unsigned char)c < 32)
                FUNC1(dst, "\\x00%02x", c & 0xff);
            else
                FUNC0(dst, c, 1);
            break;
        }
    }
    return dst->str;
}