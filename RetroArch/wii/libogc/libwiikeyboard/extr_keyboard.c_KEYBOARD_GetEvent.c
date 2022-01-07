
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
typedef int keyboard_event ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ _node ;


 scalar_t__ __lwp_queue_get (int *) ;
 int _queue ;
 int free (TYPE_1__*) ;

s32 KEYBOARD_GetEvent(keyboard_event *event)
{
 _node *n = (_node *) __lwp_queue_get(&_queue);

 if (!n)
  return 0;

 *event = n->event;

 free(n);

 return 1;
}
