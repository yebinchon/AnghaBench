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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char*,unsigned char*) ; 

__attribute__((used)) static int FUNC3(const AVProbeData *p)
{
    unsigned char c;
    const uint8_t *ptr = p->buf;
    int i;

    if (FUNC0(ptr) == 0xEFBBBF)
        ptr += 3;  /* skip UTF-8 BOM */

    for (i=0; i<3; i++) {
        if (FUNC2(ptr, "{%*d}{}%c",     &c) != 1 &&
            FUNC2(ptr, "{%*d}{%*d}%c",  &c) != 1 &&
            FUNC2(ptr, "{DEFAULT}{}%c", &c) != 1)
            return 0;
        ptr += FUNC1(ptr);
    }
    return AVPROBE_SCORE_MAX;
}