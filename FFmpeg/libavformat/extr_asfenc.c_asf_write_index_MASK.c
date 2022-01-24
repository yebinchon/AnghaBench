#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int packet_number; int /*<<< orphan*/  packet_count; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFIndex ;

/* Variables and functions */
 int ASF_INDEXED_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_asf_my_guid ; 
 int /*<<< orphan*/  ff_asf_simple_index_header ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, const ASFIndex *index,
                           uint16_t max, uint32_t count)
{
    AVIOContext *pb = s->pb;
    int i;

    FUNC3(pb, &ff_asf_simple_index_header);
    FUNC2(pb, 24 + 16 + 8 + 4 + 4 + (4 + 2) * count);
    FUNC3(pb, &ff_asf_my_guid);
    FUNC2(pb, ASF_INDEXED_INTERVAL);
    FUNC1(pb, max);
    FUNC1(pb, count);
    for (i = 0; i < count; i++) {
        FUNC1(pb, index[i].packet_number);
        FUNC0(pb, index[i].packet_count);
    }

    return 0;
}