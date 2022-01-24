#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_stream1_guid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVStream * st)
{
    AVIOContext *pb = s->pb;
    int ret;
    FUNC3(s, &ff_stream1_guid, 0x80000000 | 0x01);

    FUNC1(pb,  0x01);
    FUNC4(pb, 4);
    FUNC4(pb, 4);

    ret = FUNC5(s, st);
    if (ret < 0) {
        FUNC0(s, AV_LOG_ERROR, "write stream codec info failed codec_type(0x%x)\n", st->codecpar->codec_type);
        return -1;
    }

    FUNC2(s);
    return 0;
}