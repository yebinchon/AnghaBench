#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int FUNC2 (unsigned char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,char*,int) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    char c;
    const unsigned char *ptr = p->buf;

    if (FUNC0(ptr) == 0xEFBBBF)
        ptr += 3;  /* skip UTF-8 BOM */

    while (*ptr == '\r' || *ptr == '\n' || *ptr == '$' || !FUNC3(ptr, "//" , 2))
        ptr += FUNC1(ptr);

    if (FUNC2(ptr, "%*d:%*d:%*d:%*d , %*d:%*d:%*d:%*d , %c", &c) == 1)
        return AVPROBE_SCORE_MAX;

    return 0;
}