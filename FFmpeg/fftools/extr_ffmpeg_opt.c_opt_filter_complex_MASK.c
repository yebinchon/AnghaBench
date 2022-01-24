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
struct TYPE_4__ {int index; int /*<<< orphan*/  graph_desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_1__** filtergraphs ; 
 int input_stream_potentially_available ; 
 int nb_filtergraphs ; 

__attribute__((used)) static int FUNC4(void *optctx, const char *opt, const char *arg)
{
    FUNC1(filtergraphs, nb_filtergraphs);
    if (!(filtergraphs[nb_filtergraphs - 1] = FUNC2(sizeof(*filtergraphs[0]))))
        return FUNC0(ENOMEM);
    filtergraphs[nb_filtergraphs - 1]->index      = nb_filtergraphs - 1;
    filtergraphs[nb_filtergraphs - 1]->graph_desc = FUNC3(arg);
    if (!filtergraphs[nb_filtergraphs - 1]->graph_desc)
        return FUNC0(ENOMEM);

    input_stream_potentially_available = 1;

    return 0;
}