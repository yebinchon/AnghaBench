
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kevent_qos_s {scalar_t__* ext; } ;
typedef int mach_port_type_t ;
typedef int mach_port_t ;
struct TYPE_3__ {int msgh_remote_port; } ;
typedef TYPE_1__ mach_msg_header_t ;
typedef int kern_return_t ;


 int MACH_PORT_TYPE_SEND_ONCE ;
 int MACH_PORT_VALID (int) ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_NOTNULL (TYPE_1__*,char*) ;
 int T_ASSERT_TRUE (int,char*) ;
 int T_QUIET ;
 int mach_port_type (int ,int,int*) ;
 int mach_task_self () ;

__attribute__((used)) static mach_port_type_t
get_reply_port(struct kevent_qos_s *kev)
{
 mach_msg_header_t *hdr;
 mach_port_t reply_port;
 mach_port_type_t type;
 kern_return_t kr;

 hdr = (void*)kev->ext[0];
 T_QUIET; T_ASSERT_NOTNULL(hdr, "msg hdr");

 reply_port = hdr->msgh_remote_port;
 T_QUIET;T_ASSERT_TRUE(MACH_PORT_VALID(reply_port), "reply port valid");
 kr = mach_port_type(mach_task_self(), reply_port, &type);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_port_type");
 T_QUIET; T_ASSERT_TRUE(type & MACH_PORT_TYPE_SEND_ONCE, "send once received");

 return reply_port;
}
