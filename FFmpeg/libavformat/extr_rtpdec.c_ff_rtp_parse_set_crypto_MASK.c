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
struct TYPE_3__ {int srtp_enabled; int /*<<< orphan*/  srtp; } ;
typedef  TYPE_1__ RTPDemuxContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 

void FUNC1(RTPDemuxContext *s, const char *suite,
                             const char *params)
{
    if (!FUNC0(&s->srtp, suite, params))
        s->srtp_enabled = 1;
}