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
struct TYPE_3__ {scalar_t__ filename; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (scalar_t__,char) ; 

__attribute__((used)) static int FUNC3(AVProbeData *p)
{
    const char *ext;
    if (p->filename) {
        ext = FUNC2(p->filename, '.');
        if (ext && FUNC1(ext + 1) > 0) {
            ext++;  /* skip '.' */
            if (FUNC0(ext) == 1)
                return AVPROBE_SCORE_EXTENSION;
        }
    }
    return 0;
}