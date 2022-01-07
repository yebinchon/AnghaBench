
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mach_port_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 size_t ENV_QOS_AFTER_OVERRIDE ;
 int FALSE ;
 int KEVENT_QOS_SERVICE_NAME ;
 int MACH_PORT_NULL ;
 int T_ASSERT_FALSE (int ,char*) ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_TRUE (int ,char*) ;
 int T_END ;
 int T_LOG (char*) ;
 int T_QUIET ;
 scalar_t__ _pthread_qos_class_encode (int ,int ,int ) ;
 int bootstrap_look_up (int ,int ,int *) ;
 int bootstrap_port ;
 int * g_expected_qos ;
 int mach_sync_ipc_link_monitoring_start (int *) ;
 int mach_sync_ipc_link_monitoring_stop (int ,int *) ;
 int receive (int ,int ) ;
 int send (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void *
qos_client_send_2sync_msg_and_test_link(void *arg)
{
 mach_port_t qos_send_port;
 mach_port_t special_reply_port;
 boolean_t in_effect = FALSE;
 kern_return_t kr;
 unsigned long expected_result = (unsigned long) arg;

 kr = bootstrap_look_up(bootstrap_port,
   KEVENT_QOS_SERVICE_NAME, &qos_send_port);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "client bootstrap_look_up");


 kr = mach_sync_ipc_link_monitoring_start(&special_reply_port);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_sync_ipc_link_monitoring_start");


 send(qos_send_port, special_reply_port, MACH_PORT_NULL,
  (uint32_t)_pthread_qos_class_encode(g_expected_qos[ENV_QOS_AFTER_OVERRIDE], 0, 0), 0);


 kr = receive(special_reply_port, qos_send_port);
 T_QUIET;T_ASSERT_MACH_SUCCESS(kr, "receive");


 send(qos_send_port, special_reply_port, MACH_PORT_NULL,
  (uint32_t)_pthread_qos_class_encode(g_expected_qos[ENV_QOS_AFTER_OVERRIDE], 0, 0), 0);


 kr = receive(special_reply_port, qos_send_port);
 T_QUIET;T_ASSERT_MACH_SUCCESS(kr, "receive");


 kr = mach_sync_ipc_link_monitoring_stop(special_reply_port, &in_effect);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_sync_ipc_link_monitoring_stop");

 if (!in_effect)
  T_LOG("Link was broken");
 else
  T_LOG("Link correct");

 if (expected_result == 1)
  T_ASSERT_TRUE(in_effect, "special reply port link after rcv");
 else
  T_ASSERT_FALSE(in_effect, "special reply port link after rcv");
 T_END;
}
