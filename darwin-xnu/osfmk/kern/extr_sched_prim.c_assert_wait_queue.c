
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
typedef int event_t ;


 struct waitq* global_eventq (int ) ;

struct waitq *
assert_wait_queue(
 event_t event)
{
 return global_eventq(event);
}
