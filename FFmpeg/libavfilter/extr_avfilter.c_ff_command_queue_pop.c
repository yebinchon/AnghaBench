
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int command; int arg; } ;
struct TYPE_5__ {TYPE_2__* command_queue; } ;
typedef TYPE_1__ AVFilterContext ;
typedef TYPE_2__ AVFilterCommand ;


 int av_free (TYPE_2__*) ;
 int av_freep (int *) ;

void ff_command_queue_pop(AVFilterContext *filter)
{
    AVFilterCommand *c= filter->command_queue;
    av_freep(&c->arg);
    av_freep(&c->command);
    filter->command_queue= c->next;
    av_free(c);
}
