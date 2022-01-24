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
struct TYPE_3__ {unsigned char* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (unsigned char const*) ; 

__attribute__((used)) static int FUNC1(const AVProbeData * pd) {
    const unsigned char *buf = pd->buf;
    int len = FUNC0(buf);

    if (len < 0)
        return 0;

    if (pd->buf_size >= len + 8 &&
        FUNC0(buf + len) >= 0)
        return AVPROBE_SCORE_EXTENSION;

    return AVPROBE_SCORE_MAX / 4;
}