
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QOS_CLASS_USER_INITIATED ;
 int QOS_CLASS_USER_INTERACTIVE ;
 int T_LOG (char*) ;
 int sleep (int) ;
 int take_lock_and_exit ;
 int thread_create_at_qos (int ,int *,int) ;
 int try_to_take_lock_and_unlock ;
 int unlock_an_owner_exited_lock ;

__attribute__((used)) static void
test3(int type)
{
 T_LOG("Test 3: test if lock owner thread exiting without unlocking allows turnstile to work correctly");


 thread_create_at_qos(QOS_CLASS_USER_INITIATED, &take_lock_and_exit, type);


 thread_create_at_qos(QOS_CLASS_USER_INTERACTIVE, &try_to_take_lock_and_unlock, type);


 thread_create_at_qos(QOS_CLASS_USER_INTERACTIVE, &unlock_an_owner_exited_lock, type);

 sleep(16);
 return;
}
