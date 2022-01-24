#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint32_t ;
struct gxf_stream_info {void* last_field; void* first_field; } ;
typedef  scalar_t__ GXFMatTag ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 scalar_t__ MAT_FIRST_FIELD ; 
 scalar_t__ MAT_LAST_FIELD ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(AVIOContext *pb, int *len, struct gxf_stream_info *si) {
    si->first_field = AV_NOPTS_VALUE;
    si->last_field = AV_NOPTS_VALUE;
    while (*len >= 2) {
        GXFMatTag tag = FUNC0(pb);
        int tlen = FUNC0(pb);
        *len -= 2;
        if (tlen > *len)
            return;
        *len -= tlen;
        if (tlen == 4) {
            uint32_t value = FUNC1(pb);
            if (tag == MAT_FIRST_FIELD)
                si->first_field = value;
            else if (tag == MAT_LAST_FIELD)
                si->last_field = value;
        } else
            FUNC2(pb, tlen);
    }
}