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
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FORM_TAG ; 
 scalar_t__ RLV2_TAG ; 
 scalar_t__ RLV3_TAG ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{

    if(FUNC0(&p->buf[0]) != FORM_TAG)
        return 0;

    if(FUNC0(&p->buf[8]) != RLV2_TAG &&
        FUNC0(&p->buf[8]) != RLV3_TAG)
        return 0;

    return AVPROBE_SCORE_MAX;
}