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
struct TYPE_10__ {TYPE_2__** streams; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  block_align; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ilbc_parse_fmtp ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int st_index,
                               PayloadContext *data, const char *line)
{
    const char *p;
    AVStream *st;

    if (st_index < 0)
        return 0;
    st = s->streams[st_index];

    if (FUNC2(line, "fmtp:", &p)) {
        int ret = FUNC3(s, st, data, p, ilbc_parse_fmtp);
        if (ret < 0)
            return ret;
        if (!st->codecpar->block_align) {
            FUNC1(s, AV_LOG_ERROR, "No iLBC mode set\n");
            return FUNC0(EINVAL);
        }
    }
    return 0;
}