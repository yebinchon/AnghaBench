
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent_qos_s {int flags; int data; int fflags; int qos; int filter; int ident; } ;
typedef int int32_t ;
typedef int int16_t ;


 int EV_DISPATCH ;
 int EV_ENABLE ;
 int EV_UDATA_SPECIFIC ;
 int EXPECTED_QOS ;
 int KEVENT_FLAG_ERROR_EVENTS ;
 int KEVENT_FLAG_WORKQ ;
 int NOTE_LOWAT ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int _pthread_qos_class_encode (int ,int ,int ) ;
 int kevent_qos (int,struct kevent_qos_s*,int,struct kevent_qos_s*,int,int *,int *,int) ;

__attribute__((used)) static void
reenable_workq(int fd, int16_t filt)
{
 struct kevent_qos_s events[] = {{
  .ident = (uint64_t)fd,
  .filter = filt,
  .flags = EV_ENABLE | EV_UDATA_SPECIFIC | EV_DISPATCH,
  .qos = (int32_t)_pthread_qos_class_encode(EXPECTED_QOS,
    0, 0),
  .fflags = NOTE_LOWAT,
  .data = 1
 }};

 int kev = kevent_qos(-1, events, 1, events, 1, ((void*)0), ((void*)0),
   KEVENT_FLAG_WORKQ | KEVENT_FLAG_ERROR_EVENTS);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(kev, "reenable workq in kevent_qos");
}
