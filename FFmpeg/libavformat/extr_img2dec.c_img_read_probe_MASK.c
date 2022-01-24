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
struct TYPE_3__ {scalar_t__ buf_size; scalar_t__* filename; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,char*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 size_t FUNC4 (scalar_t__*,char*) ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    if (p->filename && FUNC2(p->filename)) {
        if (FUNC0(p->filename))
            return AVPROBE_SCORE_MAX;
        else if (FUNC3(p->filename))
            return AVPROBE_SCORE_MAX;
        else if (p->filename[FUNC4(p->filename, "*?{")]) // probably PT_GLOB
            return AVPROBE_SCORE_EXTENSION + 2; // score chosen to be a tad above the image pipes
        else if (p->buf_size == 0)
            return 0;
        else if (FUNC1(p->filename, "raw") || FUNC1(p->filename, "gif"))
            return 5;
        else
            return AVPROBE_SCORE_EXTENSION;
    }
    return 0;
}