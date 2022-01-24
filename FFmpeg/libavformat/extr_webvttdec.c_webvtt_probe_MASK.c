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
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static int FUNC3(const AVProbeData *p)
{
    const uint8_t *ptr = p->buf;

    if (FUNC0(ptr) == 0xEFBBBF)
        ptr += 3;  /* skip UTF-8 BOM */
    if (!FUNC2(ptr, "WEBVTT", 6) &&
        (!ptr[6] || FUNC1("\n\r\t ", ptr[6])))
        return AVPROBE_SCORE_MAX;
    return 0;
}