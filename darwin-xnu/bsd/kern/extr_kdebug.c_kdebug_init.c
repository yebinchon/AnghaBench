
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int assert (int ) ;
 scalar_t__ kdebug_serial ;
 int kdebug_trace_start (unsigned int,char*,int ,int ) ;
 scalar_t__ log_leaks ;

void
kdebug_init(unsigned int n_events, char *filter_desc, boolean_t wrapping)
{
 assert(filter_desc != ((void*)0));



 if (kdebug_serial) {
  n_events = 1;
  if (filter_desc[0] == '\0') {
   filter_desc[0] = 'C';
   filter_desc[1] = '1';
   filter_desc[2] = '\0';
  }
 }


 if (log_leaks && n_events == 0) {
  n_events = 200000;
 }

 kdebug_trace_start(n_events, filter_desc, wrapping, FALSE);
}
