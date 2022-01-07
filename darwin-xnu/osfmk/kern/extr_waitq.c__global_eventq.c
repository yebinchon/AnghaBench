
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 struct waitq* global_waitqs ;
 size_t waitq_hash (char*,size_t) ;

struct waitq *_global_eventq(char *event, size_t event_length)
{
 return &global_waitqs[waitq_hash(event, event_length)];
}
