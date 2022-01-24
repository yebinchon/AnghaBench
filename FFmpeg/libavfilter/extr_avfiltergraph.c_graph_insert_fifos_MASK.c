#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_13__ {int nb_inputs; TYPE_2__** inputs; } ;
struct TYPE_12__ {int nb_filters; TYPE_4__** filters; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__* dstpad; } ;
struct TYPE_10__ {int /*<<< orphan*/  needs_fifo; } ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterGraph ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilter ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int FUNC1 (TYPE_4__**,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterGraph *graph, AVClass *log_ctx)
{
    AVFilterContext *f;
    int i, j, ret;
    int fifo_count = 0;

    for (i = 0; i < graph->nb_filters; i++) {
        f = graph->filters[i];

        for (j = 0; j < f->nb_inputs; j++) {
            AVFilterLink *link = f->inputs[j];
            AVFilterContext *fifo_ctx;
            const AVFilter *fifo;
            char name[32];

            if (!link->dstpad->needs_fifo)
                continue;

            fifo = f->inputs[j]->type == AVMEDIA_TYPE_VIDEO ?
                   FUNC0("fifo") :
                   FUNC0("afifo");

            FUNC3(name, sizeof(name), "auto_fifo_%d", fifo_count++);

            ret = FUNC1(&fifo_ctx, fifo, name, NULL,
                                               NULL, graph);
            if (ret < 0)
                return ret;

            ret = FUNC2(link, fifo_ctx, 0, 0);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}