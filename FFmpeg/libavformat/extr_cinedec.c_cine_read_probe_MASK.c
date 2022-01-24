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
struct TYPE_3__ {char* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int CC_UNINT ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    int HeaderSize;
    if (p->buf[0] == 'C' && p->buf[1] == 'I' &&  // Type
        (HeaderSize = FUNC0(p->buf + 2)) >= 0x2C &&  // HeaderSize
        FUNC0(p->buf + 4) <= CC_UNINT &&       // Compression
        FUNC0(p->buf + 6) <= 1 &&              // Version
        FUNC1(p->buf + 20) &&                  // ImageCount
        FUNC1(p->buf + 24) >= HeaderSize &&    // OffImageHeader
        FUNC1(p->buf + 28) >= HeaderSize &&    // OffSetup
        FUNC1(p->buf + 32) >= HeaderSize)      // OffImageOffsets
        return AVPROBE_SCORE_MAX;
    return 0;
}