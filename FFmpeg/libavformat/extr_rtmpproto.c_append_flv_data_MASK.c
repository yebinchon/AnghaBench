#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int has_audio; int has_video; scalar_t__ flv_size; int /*<<< orphan*/  flv_data; scalar_t__ flv_off; } ;
struct TYPE_6__ {int size; int timestamp; int type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;
typedef  int /*<<< orphan*/  PutByteContext ;

/* Variables and functions */
 scalar_t__ RTMP_HEADER ; 
 int RTMP_PT_AUDIO ; 
 int RTMP_PT_VIDEO ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_2__*,int const) ; 

__attribute__((used)) static int FUNC8(RTMPContext *rt, RTMPPacket *pkt, int skip)
{
    int old_flv_size, ret;
    PutByteContext pbc;
    const uint8_t *data = pkt->data + skip;
    const int size      = pkt->size - skip;
    uint32_t ts         = pkt->timestamp;

    if (pkt->type == RTMP_PT_AUDIO) {
        rt->has_audio = 1;
    } else if (pkt->type == RTMP_PT_VIDEO) {
        rt->has_video = 1;
    }

    old_flv_size = FUNC7(rt, size + 15);

    if ((ret = FUNC0(&rt->flv_data, rt->flv_size)) < 0) {
        rt->flv_size = rt->flv_off = 0;
        return ret;
    }
    FUNC1(&pbc, rt->flv_data, rt->flv_size);
    FUNC6(&pbc, old_flv_size);
    FUNC5(&pbc, pkt->type);
    FUNC2(&pbc, size);
    FUNC2(&pbc, ts);
    FUNC5(&pbc, ts >> 24);
    FUNC2(&pbc, 0);
    FUNC4(&pbc, data, size);
    FUNC3(&pbc, size + RTMP_HEADER);

    return 0;
}