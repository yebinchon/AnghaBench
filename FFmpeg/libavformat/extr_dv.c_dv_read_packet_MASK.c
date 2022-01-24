#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {TYPE_1__* sys; } ;
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  buf; TYPE_5__* dv_demux; } ;
struct TYPE_7__ {int frame_size; } ;
typedef  TYPE_2__ RawDVContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    int size;
    RawDVContext *c = s->priv_data;

    size = FUNC3(c->dv_demux, pkt);

    if (size < 0) {
        int ret;
        int64_t pos = FUNC2(s->pb);
        if (!c->dv_demux->sys)
            return FUNC0(EIO);
        size = c->dv_demux->sys->frame_size;
        ret = FUNC1(s->pb, c->buf, size);
        if (ret < 0) {
            return ret;
        } else if (ret == 0) {
            return FUNC0(EIO);
        }

        size = FUNC4(c->dv_demux, pkt, c->buf, size, pos);
    }

    return size;
}