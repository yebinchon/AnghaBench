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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/ * data; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BUFFER_FLAG_READONLY ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  wrapped_avframe_release_buffer ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, AVPacket *pkt,
                     const AVFrame *frame, int *got_packet)
{
    AVFrame *wrapped = FUNC2(frame);
    uint8_t *data;
    int size = sizeof(*wrapped) + AV_INPUT_BUFFER_PADDING_SIZE;

    if (!wrapped)
        return FUNC0(ENOMEM);

    data = FUNC6(size);
    if (!data) {
        FUNC3(&wrapped);
        return FUNC0(ENOMEM);
    }

    pkt->buf = FUNC1(data, size,
                                wrapped_avframe_release_buffer, NULL,
                                AV_BUFFER_FLAG_READONLY);
    if (!pkt->buf) {
        FUNC3(&wrapped);
        FUNC5(&data);
        return FUNC0(ENOMEM);
    }

    FUNC4((AVFrame*)data, wrapped);
    FUNC3(&wrapped);

    pkt->data = data;
    pkt->size = sizeof(*wrapped);

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}