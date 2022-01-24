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
struct TYPE_6__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_5__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_TXD ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s) {
    AVStream *st;

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_TXD;
    FUNC3(st, 64, 1, 5);
    st->avg_frame_rate = FUNC1(st->time_base);
    /* the parameters will be extracted from the compressed bitstream */

    return 0;
}