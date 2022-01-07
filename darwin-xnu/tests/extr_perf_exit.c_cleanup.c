
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int begin_ts ;
 int dispatch_release (int ) ;
 int free (int ) ;
 int ktrace_end (int ,int) ;
 int processing_queue ;
 int session ;
 int spawn_queue ;
 scalar_t__ tracing_on ;

__attribute__((used)) static void cleanup(void) {
 free(begin_ts);
 dispatch_release(spawn_queue);
 dispatch_release(processing_queue);
 if (tracing_on) {
  ktrace_end(session, 1);
 }
}
