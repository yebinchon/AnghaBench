
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
typedef int lwp_node ;
typedef int keyboard_event ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ _node ;


 int __lwp_queue_append (int *,int *) ;
 int _queue ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static s32 _kbd_addEvent(const keyboard_event *event) {
 _node *n = malloc(sizeof(_node));
 n->event = *event;

 __lwp_queue_append(&_queue, (lwp_node*) n);

 return 1;
}
