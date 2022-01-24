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
struct TYPE_7__ {int /*<<< orphan*/  metadata_header_padding; int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_end; scalar_t__ queue; int /*<<< orphan*/  id3; } ;
typedef  TYPE_1__ MP3Context ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    MP3Context *mp3 = s->priv_data;
    AVPacket pkt;
    int ret = 0, write = 1;

    FUNC1(&mp3->id3, s->pb, s->metadata_header_padding);
    FUNC4(s);

    while (mp3->queue) {
        FUNC2(&mp3->queue, &mp3->queue_end, &pkt);
        if (write && (ret = FUNC3(s, &pkt)) < 0)
            write = 0;
        FUNC0(&pkt);
    }
    return ret;
}