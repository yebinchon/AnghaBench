
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void main_msg_queue_push(const char *msg,
      unsigned prio, unsigned duration,
      bool flush)
{
   fprintf(stderr, "MSGQ: %s\n", msg);
}
