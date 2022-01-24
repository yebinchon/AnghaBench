#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * streams; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char const**) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xiph_parse_fmtp_pair ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s, int st_index,
                               PayloadContext *data, const char *line)
{
    const char *p;

    if (st_index < 0)
        return 0;

    if (FUNC0(line, "fmtp:", &p)) {
        return FUNC1(s, s->streams[st_index], data, p,
                             xiph_parse_fmtp_pair);
    }

    return 0;
}