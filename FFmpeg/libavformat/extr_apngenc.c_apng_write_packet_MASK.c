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
struct TYPE_6__ {scalar_t__ prev_packet; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ APNGMuxContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *format_context, AVPacket *packet)
{
    APNGMuxContext *apng = format_context->priv_data;
    int ret;

    if (!apng->prev_packet) {
        apng->prev_packet = FUNC1();
        if (!apng->prev_packet)
            return FUNC0(ENOMEM);

        FUNC2(apng->prev_packet, packet);
    } else {
        ret = FUNC3(format_context, packet);
        if (ret < 0)
            return ret;
    }

    return 0;
}