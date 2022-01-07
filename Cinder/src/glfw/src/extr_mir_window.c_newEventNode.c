
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_4__ {int * window; int event; } ;
typedef int MirEvent ;
typedef TYPE_1__ EventNode ;


 TYPE_1__* calloc (int,int) ;
 int mir_event_ref (int const*) ;

__attribute__((used)) static EventNode* newEventNode(const MirEvent* event, _GLFWwindow* context)
{
    EventNode* new_node = calloc(1, sizeof(EventNode));
    new_node->event = mir_event_ref(event);
    new_node->window = context;

    return new_node;
}
