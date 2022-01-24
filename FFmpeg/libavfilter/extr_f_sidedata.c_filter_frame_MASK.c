#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {TYPE_1__** side_data; int /*<<< orphan*/  nb_side_data; } ;
struct TYPE_14__ {int type; int mode; } ;
struct TYPE_13__ {int type; } ;
typedef  TYPE_2__ SideDataContext ;
typedef  int /*<<< orphan*/  AVFrameSideData ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
#define  SIDEDATA_DELETE 129 
#define  SIDEDATA_SELECT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    SideDataContext *s = ctx->priv;
    AVFrameSideData *sd = NULL;

    if (s->type != -1)
       sd = FUNC2(frame, s->type);

    switch (s->mode) {
    case SIDEDATA_SELECT:
        if (sd) {
            return FUNC4(outlink, frame);
        }
        break;
    case SIDEDATA_DELETE:
        if (s->type == -1) {
            while (frame->nb_side_data)
                FUNC3(frame, frame->side_data[0]->type);
        } else if (sd) {
            FUNC3(frame, s->type);
        }
        return FUNC4(outlink, frame);
        break;
    default:
        FUNC0(0);
    };

    FUNC1(&frame);

    return 0;
}