
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
typedef int EventQueue ;
typedef TYPE_1__ EventNode ;


 int free (TYPE_1__*) ;
 int mir_event_unref (int ) ;

__attribute__((used)) static void deleteNode(EventQueue* queue, EventNode* node)
{
    mir_event_unref(node->event);
    free(node);
}
