
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_policy_t ;
struct thread_policy_state {int thps_user_promotion_basepri; } ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int THREAD_POLICY_STATE ;
 int THREAD_POLICY_STATE_COUNT ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int pthread_mach_thread_np (int ) ;
 int pthread_self () ;
 int thread_policy_get (int ,int ,int ,int *,int *) ;

__attribute__((used)) static uint32_t
get_user_promotion_basepri(void)
{
 mach_msg_type_number_t count = THREAD_POLICY_STATE_COUNT;
 struct thread_policy_state thread_policy;
 boolean_t get_default = FALSE;
 mach_port_t thread_port = pthread_mach_thread_np(pthread_self());

 kern_return_t kr = thread_policy_get(thread_port, THREAD_POLICY_STATE,
   (thread_policy_t)&thread_policy, &count, &get_default);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "thread_policy_get");
 return thread_policy.thps_user_promotion_basepri;
}
