
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nb_outputs; TYPE_1__** outputs; } ;
struct TYPE_3__ {int name; int ost; } ;
typedef TYPE_1__ OutputFilter ;


 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*,int ) ;
 int exit_program (int) ;
 TYPE_2__** filtergraphs ;
 int nb_filtergraphs ;

void check_filter_outputs(void)
{
    int i;
    for (i = 0; i < nb_filtergraphs; i++) {
        int n;
        for (n = 0; n < filtergraphs[i]->nb_outputs; n++) {
            OutputFilter *output = filtergraphs[i]->outputs[n];
            if (!output->ost) {
                av_log(((void*)0), AV_LOG_FATAL, "Filter %s has an unconnected output\n", output->name);
                exit_program(1);
            }
        }
    }
}
