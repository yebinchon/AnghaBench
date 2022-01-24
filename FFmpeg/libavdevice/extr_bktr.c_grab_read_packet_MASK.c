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
struct TYPE_7__ {int /*<<< orphan*/  per_frame; } ;
typedef  TYPE_1__ VideoData ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video_buf ; 
 int video_buf_size ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s1, AVPacket *pkt)
{
    VideoData *s = s1->priv_data;

    if (FUNC2(pkt, video_buf_size) < 0)
        return FUNC0(EIO);

    FUNC3(s->per_frame);

    pkt->pts = FUNC1();
    FUNC4(pkt->data, video_buf, video_buf_size);

    return video_buf_size;
}