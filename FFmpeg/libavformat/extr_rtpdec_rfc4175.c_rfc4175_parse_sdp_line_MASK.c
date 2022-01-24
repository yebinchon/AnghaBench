#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__** streams; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int /*<<< orphan*/  sampling; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  depth; } ;
struct TYPE_12__ {scalar_t__ height; scalar_t__ width; } ;
typedef  TYPE_2__ PayloadContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__*,TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rfc4175_parse_fmtp ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int st_index,
                                  PayloadContext *data, const char *line)
{
    const char *p;

    if (st_index < 0)
        return 0;

    if (FUNC1(line, "fmtp:", &p)) {
        AVStream *stream = s->streams[st_index];
        int ret = FUNC2(s, stream, data, p, rfc4175_parse_fmtp);

        if (ret < 0)
            return ret;


        if (!data->sampling || !data->depth || !data->width || !data->height)
            return -1;

        stream->codecpar->width = data->width;
        stream->codecpar->height = data->height;

        ret = FUNC3(stream, data);
        FUNC0(&data->sampling);

        return ret;
    }

    return 0;
}