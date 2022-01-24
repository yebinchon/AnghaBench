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
struct TYPE_3__ {int size; char* data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(AVPacket *pkt)
{
    if (pkt->size) {
        int skip = 0;
        unsigned flags = 0;

        if (pkt->size < 4)
            return 0;
        if (FUNC0(pkt->data) == FUNC0("RIFF"))
            skip = 12;

        if (pkt->size < skip + 4)
            return 0;
        if (FUNC0(pkt->data + skip) == FUNC0("VP8X")) {
            flags |= pkt->data[skip + 4 + 4];
        }

        if (flags & 2)  // ANIMATION_FLAG is on
            return 1;
    }
    return 0;
}