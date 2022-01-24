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
struct AVFormatContext {int /*<<< orphan*/  pb; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct AVFormatContext*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct AVFormatContext *s, AVPacket *pkt)
{
    if (pkt->size > 65535) {
        FUNC0(s, AV_LOG_ERROR,
               "Packet size too large for s302m. (%d > 65535)\n", pkt->size);
        return -1;
    }
    FUNC1(s->pb, pkt->size);
    FUNC1(s->pb, 0x8010); // unknown
    FUNC2(s->pb, pkt->data, pkt->size);
    return 0;
}