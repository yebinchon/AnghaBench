#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {char* str; int len; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int AV_BPRINT_SIZE_AUTOMATIC ; 
 int AV_BPRINT_SIZE_COUNT_ONLY ; 
 int AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*) ; 

int FUNC7(void)
{
    AVBPrint b;
    char buf[256];
    struct tm testtime = { .tm_year = 100, .tm_mon = 11, .tm_mday = 20 };

    FUNC1(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC4(&b, 5);
    FUNC5("Short text in unlimited buffer: %u/%u\n", (unsigned)FUNC6(b.str), b.len);
    FUNC5("%s\n", b.str);
    FUNC0(&b, NULL);

    FUNC1(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC4(&b, 25);
    FUNC5("Long text in unlimited buffer: %u/%u\n", (unsigned)FUNC6(b.str), b.len);
    FUNC0(&b, NULL);

    FUNC1(&b, 0, 2048);
    FUNC4(&b, 25);
    FUNC5("Long text in limited buffer: %u/%u\n", (unsigned)FUNC6(b.str), b.len);
    FUNC0(&b, NULL);

    FUNC1(&b, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC4(&b, 5);
    FUNC5("Short text in automatic buffer: %u/%u\n", (unsigned)FUNC6(b.str), b.len);

    FUNC1(&b, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC4(&b, 25);
    FUNC5("Long text in automatic buffer: %u/%u\n", (unsigned)FUNC6(b.str)/8*8, b.len);
    /* Note that the size of the automatic buffer is arch-dependent. */

    FUNC1(&b, 0, AV_BPRINT_SIZE_COUNT_ONLY);
    FUNC4(&b, 25);
    FUNC5("Long text count only buffer: %u/%u\n", (unsigned)FUNC6(b.str), b.len);

    FUNC2(&b, buf, sizeof(buf));
    FUNC4(&b, 25);
    FUNC5("Long text count only buffer: %u/%u\n", (unsigned)FUNC6(buf), b.len);

    FUNC1(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC3(&b, "%Y-%m-%d", &testtime);
    FUNC5("strftime full: %u/%u \"%s\"\n", (unsigned)FUNC6(buf), b.len, b.str);
    FUNC0(&b, NULL);

    FUNC1(&b, 0, 8);
    FUNC3(&b, "%Y-%m-%d", &testtime);
    FUNC5("strftime truncated: %u/%u \"%s\"\n", (unsigned)FUNC6(buf), b.len, b.str);

    return 0;
}