
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent_qos_s {int ident; } ;


 size_t ENV_QOS_AFTER_OVERRIDE ;
 int EXPECT_QOS_EQ (int ,char*,int ) ;
 int EXPECT_TEST_MSG (struct kevent_qos_s*) ;
 int T_END ;
 int T_EXPECT_LT (unsigned int,unsigned int,char*,unsigned int,unsigned int) ;
 int T_LOG (char*) ;
 int T_SKIP (char*) ;
 int enable_kevent (int *,int ) ;
 int * g_expected_qos ;
 int * g_expected_qos_name ;
 unsigned int get_user_promotion_basepri () ;
 scalar_t__ geteuid () ;

__attribute__((used)) static void
workloop_cb_test_sync_send_and_enable(uint64_t *workloop_id, struct kevent_qos_s **eventslist, int *events)
{
 unsigned override_priority;
 unsigned reenable_priority;

 T_LOG("Workloop handler workloop_cb_test_sync_send_and_enable called");

 EXPECT_TEST_MSG(*eventslist);

 if (geteuid() != 0) {
  T_SKIP("kevent_qos test requires root privileges to run.");
 }


 EXPECT_QOS_EQ(g_expected_qos[ENV_QOS_AFTER_OVERRIDE],
   "dispatch_source event handler QoS should be %s", g_expected_qos_name[ENV_QOS_AFTER_OVERRIDE]);


 override_priority = get_user_promotion_basepri();


 struct kevent_qos_s *kev = *eventslist;
 enable_kevent(workloop_id, kev->ident);





 reenable_priority = get_user_promotion_basepri();
 T_EXPECT_LT(reenable_priority, override_priority,
  "thread's current override priority %d should be less than override priority prior to enabling knote %d",
  reenable_priority, override_priority);

 *events = 0;
 T_END;
}
