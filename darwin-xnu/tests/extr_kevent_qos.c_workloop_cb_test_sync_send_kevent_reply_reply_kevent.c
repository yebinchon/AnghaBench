
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent_qos_s {int filter; int ident; } ;
typedef int mach_port_t ;


 int EVFILT_MACHPORT ;
 int T_ASSERT_EQ_INT (int,int,char*) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int T_SKIP (char*) ;
 int enable_kevent (int *,int ) ;
 int get_reply_port (struct kevent_qos_s*) ;
 scalar_t__ geteuid () ;
 int send_reply (int ) ;
 int workloop_cb_test_sync_send_kevent_reply_reply_kevent_handler_called ;

__attribute__((used)) static void
workloop_cb_test_sync_send_kevent_reply_reply_kevent(uint64_t *workloop_id, struct kevent_qos_s **eventslist, int *events)
{
 T_LOG("workloop handler workloop_cb_test_sync_send_kevent_reply_reply_kevent called");

 if (geteuid() != 0) {
  T_SKIP("kevent_qos test requires root privileges to run.");
 }

 T_QUIET; T_ASSERT_EQ_INT(*events, 1, "events received");
 T_QUIET; T_ASSERT_EQ_INT((*eventslist)->filter, EVFILT_MACHPORT, "received EVFILT_MACHPORT");

 struct kevent_qos_s *kev = *eventslist;
 mach_port_t reply_port = get_reply_port(kev);

 if (workloop_cb_test_sync_send_kevent_reply_reply_kevent_handler_called == 0) {
  workloop_cb_test_sync_send_kevent_reply_reply_kevent_handler_called = 1;


  enable_kevent(workloop_id, kev->ident);


  send_reply(reply_port);

  *events = 0;

 } else {

  send_reply(reply_port);


  enable_kevent(workloop_id, kev->ident);

  *events = 0;
 }

 T_LOG("Handler returning \n");
}
