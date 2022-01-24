#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int unavailable; } ;
struct TYPE_13__ {scalar_t__ eof_reached; scalar_t__ eagain; } ;
struct TYPE_12__ {int nb_outputs; int nb_inputs; TYPE_1__** outputs; TYPE_3__** inputs; int /*<<< orphan*/  graph; } ;
struct TYPE_11__ {int /*<<< orphan*/  filter; TYPE_2__* ist; } ;
struct TYPE_10__ {size_t file_index; } ;
struct TYPE_9__ {TYPE_8__* ost; } ;
typedef  TYPE_2__ InputStream ;
typedef  TYPE_3__ InputFilter ;
typedef  TYPE_4__ FilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 TYPE_7__** input_files ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(FilterGraph *graph, InputStream **best_ist)
{
    int i, ret;
    int nb_requests, nb_requests_max = 0;
    InputFilter *ifilter;
    InputStream *ist;

    *best_ist = NULL;
    ret = FUNC2(graph->graph);
    if (ret >= 0)
        return FUNC4(0);

    if (ret == AVERROR_EOF) {
        ret = FUNC4(1);
        for (i = 0; i < graph->nb_outputs; i++)
            FUNC3(graph->outputs[i]->ost);
        return ret;
    }
    if (ret != FUNC0(EAGAIN))
        return ret;

    for (i = 0; i < graph->nb_inputs; i++) {
        ifilter = graph->inputs[i];
        ist = ifilter->ist;
        if (input_files[ist->file_index]->eagain ||
            input_files[ist->file_index]->eof_reached)
            continue;
        nb_requests = FUNC1(ifilter->filter);
        if (nb_requests > nb_requests_max) {
            nb_requests_max = nb_requests;
            *best_ist = ist;
        }
    }

    if (!*best_ist)
        for (i = 0; i < graph->nb_outputs; i++)
            graph->outputs[i]->ost->unavailable = 1;

    return 0;
}