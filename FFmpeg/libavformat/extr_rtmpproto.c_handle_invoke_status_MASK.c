#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tmpstr ;
struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {void* state; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int RTMP_HEADER ; 
 void* STATE_PLAYING ; 
 void* STATE_PUBLISHING ; 
 void* STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    const uint8_t *data_end = pkt->data + pkt->size;
    const uint8_t *ptr = pkt->data + RTMP_HEADER;
    uint8_t tmpstr[256];
    int i, t;

    for (i = 0; i < 2; i++) {
        t = FUNC2(ptr, data_end);
        if (t < 0)
            return 1;
        ptr += t;
    }

    t = FUNC1(ptr, data_end, "level", tmpstr, sizeof(tmpstr));
    if (!t && !FUNC3(tmpstr, "error")) {
        t = FUNC1(ptr, data_end,
                                   "description", tmpstr, sizeof(tmpstr));
        if (t || !tmpstr[0])
            t = FUNC1(ptr, data_end, "code",
                                       tmpstr, sizeof(tmpstr));
        if (!t)
            FUNC0(s, AV_LOG_ERROR, "Server error: %s\n", tmpstr);
        return -1;
    }

    t = FUNC1(ptr, data_end, "code", tmpstr, sizeof(tmpstr));
    if (!t && !FUNC3(tmpstr, "NetStream.Play.Start")) rt->state = STATE_PLAYING;
    if (!t && !FUNC3(tmpstr, "NetStream.Play.Stop")) rt->state = STATE_STOPPED;
    if (!t && !FUNC3(tmpstr, "NetStream.Play.UnpublishNotify")) rt->state = STATE_STOPPED;
    if (!t && !FUNC3(tmpstr, "NetStream.Publish.Start")) rt->state = STATE_PUBLISHING;
    if (!t && !FUNC3(tmpstr, "NetStream.Seek.Notify")) rt->state = STATE_PLAYING;

    return 0;
}