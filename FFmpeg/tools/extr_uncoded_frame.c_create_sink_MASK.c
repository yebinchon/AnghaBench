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
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_7__ {int /*<<< orphan*/  output_pads; } ;
struct TYPE_6__ {int /*<<< orphan*/  sink; } ;
typedef  TYPE_1__ Stream ;
typedef  int /*<<< orphan*/  AVFilterGraph ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(Stream *st, AVFilterGraph *graph,
                       AVFilterContext *f, int idx)
{
    enum AVMediaType type = FUNC5(f->output_pads, idx);
    const char *sink_name;
    int ret;

    switch (type) {
    case AVMEDIA_TYPE_VIDEO: sink_name =  "buffersink"; break;
    case AVMEDIA_TYPE_AUDIO: sink_name = "abuffersink"; break;
    default:
        FUNC1(NULL, AV_LOG_ERROR, "Stream type not supported\n");
        return FUNC0(EINVAL);
    }
    ret = FUNC3(&st->sink,
                                       FUNC2(sink_name),
                                       NULL, NULL, NULL, graph);
    if (ret < 0)
        return ret;
    ret = FUNC4(f, idx, st->sink, 0);
    if (ret < 0)
        return ret;
    return 0;
}