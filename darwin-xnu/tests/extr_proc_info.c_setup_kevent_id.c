
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_qos_s {int ident; int qos; int udata; int flags; int filter; } ;
typedef int kqueue_id_t ;


 int EVFILT_USER ;
 int EV_ADD ;
 int EXPECTED_UDATA ;
 int KEVENT_FLAG_IMMEDIATE ;
 int KEVENT_FLAG_WORKLOOP ;
 int QOS_CLASS_DEFAULT ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 scalar_t__ _pthread_qos_class_encode (int ,int ,int ) ;
 int kevent_id (int ,struct kevent_qos_s*,int,int *,int ,int *,int *,int) ;

__attribute__((used)) static void
setup_kevent_id(kqueue_id_t id)
{
 struct kevent_qos_s events_id[] = {{
  .filter = EVFILT_USER,
  .ident = 1,
  .flags = EV_ADD,
  .qos = (int)_pthread_qos_class_encode(QOS_CLASS_DEFAULT, 0, 0),
  .udata = EXPECTED_UDATA
 }};

 int err = kevent_id(id, events_id, 1, ((void*)0), 0, ((void*)0), ((void*)0), KEVENT_FLAG_WORKLOOP | KEVENT_FLAG_IMMEDIATE);
 T_ASSERT_POSIX_SUCCESS(err, "register event with kevent_id");
}
