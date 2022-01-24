#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3(AVStream *st, AVIOContext *out,
                              int bandwidth, const char *filename, char *agroup,
                              char *codecs, char *ccgroup) {

    if (!out || !filename)
        return;

    if (!bandwidth) {
        FUNC0(NULL, AV_LOG_WARNING,
                "Bandwidth info not available, set audio and video bitrates\n");
        return;
    }

    FUNC1(out, "#EXT-X-STREAM-INF:BANDWIDTH=%d", bandwidth);
    if (st && st->codecpar->width > 0 && st->codecpar->height > 0)
        FUNC1(out, ",RESOLUTION=%dx%d", st->codecpar->width,
                st->codecpar->height);
    if (codecs && FUNC2(codecs) > 0)
        FUNC1(out, ",CODECS=\"%s\"", codecs);
    if (agroup && FUNC2(agroup) > 0)
        FUNC1(out, ",AUDIO=\"group_%s\"", agroup);
    if (ccgroup && FUNC2(ccgroup) > 0)
        FUNC1(out, ",CLOSED-CAPTIONS=\"%s\"", ccgroup);
    FUNC1(out, "\n%s\n\n", filename);
}