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
typedef  int /*<<< orphan*/  layout ;
struct TYPE_9__ {int len; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_8__ {int type; scalar_t__ sample_rate; int /*<<< orphan*/  format; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVBPrint ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(AVBPrint *buf, AVFilterLink *link)
{
    char *format;
    char layout[64];
    AVBPrint dummy_buffer = { 0 };

    if (!buf)
        buf = &dummy_buffer;
    switch (link->type) {
        case AVMEDIA_TYPE_VIDEO:
            format = FUNC4(FUNC2(link->format), "?");
            FUNC0(buf, "[%dx%d %d:%d %s]", link->w, link->h,
                    link->sample_aspect_ratio.num,
                    link->sample_aspect_ratio.den,
                    format);
            break;

        case AVMEDIA_TYPE_AUDIO:
            FUNC1(layout, sizeof(layout),
                                         link->channels, link->channel_layout);
            format = FUNC4(FUNC3(link->format), "?");
            FUNC0(buf, "[%dHz %s:%s]",
                       (int)link->sample_rate, format, layout);
            break;

        default:
            FUNC0(buf, "?");
            break;
    }
    return buf->len;
}