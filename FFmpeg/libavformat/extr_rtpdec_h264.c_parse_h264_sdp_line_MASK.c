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
struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {int /*<<< orphan*/  codecpar; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdp_parse_fmtp_config_h264 ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int st_index,
                               PayloadContext *h264_data, const char *line)
{
    AVStream *stream;
    const char *p = line;

    if (st_index < 0)
        return 0;

    stream = s->streams[st_index];

    if (FUNC0(p, "framesize:", &p)) {
        FUNC1(stream->codecpar, p);
    } else if (FUNC0(p, "fmtp:", &p)) {
        return FUNC2(s, stream, h264_data, p, sdp_parse_fmtp_config_h264);
    } else if (FUNC0(p, "cliprect:", &p)) {
        // could use this if we wanted.
    }

    return 0;
}