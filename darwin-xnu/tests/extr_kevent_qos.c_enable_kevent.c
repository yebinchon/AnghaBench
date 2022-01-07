
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kevent_qos_s {int member_0; } ;
typedef int kern_return_t ;


 int KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST ;
 int KEVENT_FLAG_ERROR_EVENTS ;
 int KEVENT_FLAG_WORKLOOP ;
 int T_ASSERT_POSIX_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int kevent_id (int ,struct kevent_qos_s*,int,struct kevent_qos_s*,int,int *,int *,int) ;
 int populate_kevent (struct kevent_qos_s*,unsigned long long) ;

__attribute__((used)) static void
enable_kevent(uint64_t *workloop_id, unsigned long long port)
{
 kern_return_t kr;
 struct kevent_qos_s kev;

 populate_kevent(&kev, port);
 struct kevent_qos_s kev_err[] = {{ 0 }};

 kr = kevent_id(*workloop_id, &kev, 1, kev_err, 1, ((void*)0),
   ((void*)0), KEVENT_FLAG_WORKLOOP | KEVENT_FLAG_ERROR_EVENTS | KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(kr, "kevent_id");
}
