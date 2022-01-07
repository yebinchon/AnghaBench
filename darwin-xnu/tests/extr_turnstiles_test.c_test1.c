
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QOS_CLASS_USER_INITIATED ;
 int QOS_CLASS_USER_INTERACTIVE ;
 int T_LOG (char*) ;
 int sleep (int) ;
 int take_lock_check_priority ;
 int thread_create_at_qos (int ,int *,int) ;
 int try_to_take_lock_and_unlock ;

__attribute__((used)) static void
test1(int type)
{
 T_LOG("Test 1: test if lock contended by a UI thread boosts the owner to UI qos");


 thread_create_at_qos(QOS_CLASS_USER_INITIATED, &take_lock_check_priority, type);


 thread_create_at_qos(QOS_CLASS_USER_INTERACTIVE, &try_to_take_lock_and_unlock, type);

 sleep(12);
 return;
}
