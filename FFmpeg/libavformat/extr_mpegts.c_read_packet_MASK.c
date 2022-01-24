#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int TS_PACKET_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,int const**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int const*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, uint8_t *buf, int raw_packet_size,
                       const uint8_t **data)
{
    AVIOContext *pb = s->pb;
    int len;

    for (;;) {
        len = FUNC1(pb, buf, TS_PACKET_SIZE, data);
        if (len != TS_PACKET_SIZE)
            return len < 0 ? len : AVERROR_EOF;
        /* check packet sync byte */
        if ((*data)[0] != 0x47) {
            /* find a new packet start */

            if (FUNC2(s, raw_packet_size, *data) < 0)
                return FUNC0(EAGAIN);
            else
                continue;
        } else {
            break;
        }
    }
    return 0;
}