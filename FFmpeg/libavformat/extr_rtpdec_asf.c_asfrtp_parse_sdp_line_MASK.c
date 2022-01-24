#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ id; int /*<<< orphan*/  need_parsing; int /*<<< orphan*/  codecpar; } ;
struct TYPE_10__ {TYPE_5__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {TYPE_2__* asf_ctx; } ;
struct TYPE_8__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_7__ {scalar_t__ id; int /*<<< orphan*/  need_parsing; int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_3__ RTSPState ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int,int,int) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int stream_index,
                                 PayloadContext *asf, const char *line)
{
    if (stream_index < 0)
        return 0;
    if (FUNC0(line, "stream:", &line)) {
        RTSPState *rt = s->priv_data;

        s->streams[stream_index]->id = FUNC3(line, NULL, 10);

        if (rt->asf_ctx) {
            int i;

            for (i = 0; i < rt->asf_ctx->nb_streams; i++) {
                if (s->streams[stream_index]->id == rt->asf_ctx->streams[i]->id) {
                    FUNC1(s->streams[stream_index]->codecpar,
                                            rt->asf_ctx->streams[i]->codecpar);
                    s->streams[stream_index]->need_parsing =
                        rt->asf_ctx->streams[i]->need_parsing;
                    FUNC2(s->streams[stream_index], 32, 1, 1000);
                }
           }
        }
    }

    return 0;
}