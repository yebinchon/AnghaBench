#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  plays; int /*<<< orphan*/  frame_number; scalar_t__ acTL_offset; scalar_t__ prev_packet; } ;
struct TYPE_9__ {TYPE_1__* pb; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int seekable; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ APNGMuxContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *format_context)
{
    APNGMuxContext *apng = format_context->priv_data;
    AVIOContext *io_context = format_context->pb;
    uint8_t buf[8];
    int ret;

    if (apng->prev_packet) {
        ret = FUNC4(format_context, NULL);
        if (ret < 0)
            return ret;
    }

    FUNC2(io_context, FUNC1('I', 'E', 'N', 'D'), NULL, 0);

    if (apng->acTL_offset && (io_context->seekable & AVIO_SEEKABLE_NORMAL)) {
        FUNC3(io_context, apng->acTL_offset, SEEK_SET);

        FUNC0(buf, apng->frame_number);
        FUNC0(buf + 4, apng->plays);
        FUNC2(io_context, FUNC1('a', 'c', 'T', 'L'), buf, 8);
    }

    return 0;
}