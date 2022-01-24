#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_13__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  INDEX_BASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  ff_SBE2_STREAM_DESC_EVENT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVStream *st)
{
    AVIOContext *pb = s->pb;
    int ret;

    FUNC4(s, &ff_SBE2_STREAM_DESC_EVENT, 0x80000000 | (st->index + INDEX_BASE));
    FUNC1(pb, 0x00000001);
    FUNC1(pb, st->index + INDEX_BASE); //stream_id
    FUNC1(pb, 0x00000001);
    FUNC5(pb, 8);

    ret = FUNC6(s, st);
    if (ret < 0) {
        FUNC0(s, AV_LOG_ERROR, "write stream codec info failed codec_type(0x%x)\n", st->codecpar->codec_type);
        return -1;
    }
    FUNC3(s);

    FUNC2(st, 64, 1, 10000000);

    return 0;
}