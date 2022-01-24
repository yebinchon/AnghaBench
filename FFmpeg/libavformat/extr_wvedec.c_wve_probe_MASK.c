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
struct TYPE_3__ {scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ memcmp (scalar_t__,char*,int) ; 

__attribute__((used)) static int wve_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "ALawSoundFile**\0\017\020", 18) ||
        memcmp(p->buf + 22, "\0\0\0\1\0\0\0\0\0\0", 10))
        return 0;
    return AVPROBE_SCORE_MAX;
}