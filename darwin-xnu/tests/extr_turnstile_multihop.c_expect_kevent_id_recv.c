
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_qos_s {int flags; int fflags; int data; int member_0; int qos; int filter; int ident; } ;
typedef int pthread_workqueue_function_workloop_t ;
typedef int mach_port_t ;
typedef int int32_t ;


 int EVFILT_MACHPORT ;
 int EV_ADD ;
 int EV_DISPATCH ;
 int EV_UDATA_SPECIFIC ;
 int EV_VANISHED ;
 int KEVENT_FLAG_ERROR_EVENTS ;
 int KEVENT_FLAG_WORKLOOP ;
 int MACH_MSG_TRAILER_FORMAT_0 ;
 int MACH_RCV_LARGE ;
 int MACH_RCV_LARGE_IDENTITY ;
 int MACH_RCV_MSG ;
 int MACH_RCV_TRAILER_CTX ;
 int MACH_RCV_TRAILER_ELEMENTS (int ) ;
 int MACH_RCV_TRAILER_TYPE (int ) ;
 int MACH_RCV_VOUCHER ;
 int QOS_CLASS_MAINTENANCE ;
 int T_ASSERT_EQ (int,int ,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_ASSERT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int _pthread_qos_class_encode (int ,int ,int ) ;
 int _pthread_workqueue_init_with_workloop (int ,int ,int ,int ,int ) ;
 int event_cb ;
 int kevent_id (int,struct kevent_qos_s*,int,struct kevent_qos_s*,int,int *,int *,int) ;
 int worker_cb ;
 scalar_t__ workloop_cb_test_intransit ;

__attribute__((used)) static void
expect_kevent_id_recv(mach_port_t port)
{
 int r;

 T_QUIET; T_ASSERT_POSIX_ZERO(_pthread_workqueue_init_with_workloop(
  worker_cb, event_cb,
  (pthread_workqueue_function_workloop_t)workloop_cb_test_intransit, 0, 0), ((void*)0));

 struct kevent_qos_s kev[] = {{
  .ident = port,
  .filter = EVFILT_MACHPORT,
  .flags = EV_ADD | EV_UDATA_SPECIFIC | EV_DISPATCH | EV_VANISHED,
  .fflags = (MACH_RCV_MSG | MACH_RCV_LARGE | MACH_RCV_LARGE_IDENTITY |
    MACH_RCV_TRAILER_ELEMENTS(MACH_RCV_TRAILER_CTX) |
    MACH_RCV_TRAILER_TYPE(MACH_MSG_TRAILER_FORMAT_0) |
    MACH_RCV_VOUCHER),
  .data = 1,
  .qos = (int32_t)_pthread_qos_class_encode(QOS_CLASS_MAINTENANCE, 0, 0)
 }};

 struct kevent_qos_s kev_err[] = {{ 0 }};


 r = kevent_id(25, kev, 1, kev_err, 1, ((void*)0),
   ((void*)0), KEVENT_FLAG_WORKLOOP | KEVENT_FLAG_ERROR_EVENTS);

 T_QUIET; T_ASSERT_POSIX_SUCCESS(r, "kevent_id");
 T_QUIET; T_ASSERT_EQ(r, 0, "no errors returned from kevent_id");
}
