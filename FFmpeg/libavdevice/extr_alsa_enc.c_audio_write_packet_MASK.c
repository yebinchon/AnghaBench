#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; scalar_t__ dts; int duration; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int frame_size; scalar_t__ timestamp; int reorder_buf_size; int /*<<< orphan*/  h; int /*<<< orphan*/ * reorder_buf; int /*<<< orphan*/  (* reorder_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ AlsaData ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s1, AVPacket *pkt)
{
    AlsaData *s = s1->priv_data;
    int res;
    int size     = pkt->size;
    uint8_t *buf = pkt->data;

    size /= s->frame_size;
    if (pkt->dts != AV_NOPTS_VALUE)
        s->timestamp = pkt->dts;
    s->timestamp += pkt->duration ? pkt->duration : size;

    if (s->reorder_func) {
        if (size > s->reorder_buf_size)
            if (FUNC2(s, size))
                return FUNC0(ENOMEM);
        s->reorder_func(buf, s->reorder_buf, size);
        buf = s->reorder_buf;
    }
    while ((res = FUNC4(s->h, buf, size)) < 0) {
        if (res == -EAGAIN) {

            return FUNC0(EAGAIN);
        }

        if (FUNC3(s1, res) < 0) {
            FUNC1(s1, AV_LOG_ERROR, "ALSA write error: %s\n",
                   FUNC5(res));

            return FUNC0(EIO);
        }
    }

    return 0;
}