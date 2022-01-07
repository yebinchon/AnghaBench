
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;


 int KEVENT_QOS_SERVICE_NAME ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int bootstrap_check_in (int ,int ,int *) ;
 int bootstrap_port ;

__attribute__((used)) static mach_port_t
get_server_port(void)
{
 mach_port_t port;
 kern_return_t kr = bootstrap_check_in(bootstrap_port,
   KEVENT_QOS_SERVICE_NAME, &port);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "server bootstrap_check_in");
 return port;
}
