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
struct TYPE_10__ {int index; int nb_outputs; int format; int nb_inputs; struct TYPE_10__** inputs; int /*<<< orphan*/  frame_queue; struct TYPE_10__* graph; TYPE_2__* ist; struct TYPE_10__** outputs; TYPE_1__* ost; } ;
struct TYPE_9__ {int nb_filters; TYPE_3__** filters; } ;
struct TYPE_8__ {TYPE_3__* filter; } ;
typedef  TYPE_1__ OutputStream ;
typedef  TYPE_2__ InputStream ;
typedef  TYPE_3__ FilterGraph ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__** filtergraphs ; 
 int nb_filtergraphs ; 

int FUNC4(InputStream *ist, OutputStream *ost)
{
    FilterGraph *fg = FUNC2(sizeof(*fg));

    if (!fg)
        FUNC3(1);
    fg->index = nb_filtergraphs;

    FUNC0(fg->outputs, fg->nb_outputs);
    if (!(fg->outputs[0] = FUNC2(sizeof(*fg->outputs[0]))))
        FUNC3(1);
    fg->outputs[0]->ost   = ost;
    fg->outputs[0]->graph = fg;
    fg->outputs[0]->format = -1;

    ost->filter = fg->outputs[0];

    FUNC0(fg->inputs, fg->nb_inputs);
    if (!(fg->inputs[0] = FUNC2(sizeof(*fg->inputs[0]))))
        FUNC3(1);
    fg->inputs[0]->ist   = ist;
    fg->inputs[0]->graph = fg;
    fg->inputs[0]->format = -1;

    fg->inputs[0]->frame_queue = FUNC1(8 * sizeof(AVFrame*));
    if (!fg->inputs[0]->frame_queue)
        FUNC3(1);

    FUNC0(ist->filters, ist->nb_filters);
    ist->filters[ist->nb_filters - 1] = fg->inputs[0];

    FUNC0(filtergraphs, nb_filtergraphs);
    filtergraphs[nb_filtergraphs - 1] = fg;

    return 0;
}