
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _runloop_msg_queue_lock ;
 int msg_queue_new (int) ;
 int retroarch_msg_queue_deinit () ;
 int runloop_msg_queue ;
 int slock_new () ;

__attribute__((used)) static void retroarch_msg_queue_init(void)
{
   retroarch_msg_queue_deinit();
   runloop_msg_queue = msg_queue_new(8);




}
