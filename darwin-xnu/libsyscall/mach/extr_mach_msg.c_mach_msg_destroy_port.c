
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int mach_msg_type_name_t ;







 int MACH_PORT_RIGHT_RECEIVE ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 int mach_port_deallocate (int ,int ) ;
 int mach_port_extract_right (int ,int ,int const,int *,int*) ;
 int mach_port_insert_right (int ,int ,int ,int const) ;
 int mach_port_mod_refs (int ,int ,int ,int) ;
 int mach_task_self_ ;

__attribute__((used)) static void
mach_msg_destroy_port(mach_port_t port, mach_msg_type_name_t type)
{
    if (MACH_PORT_VALID(port)) switch (type) {
      case 129:
      case 128:

 (void) mach_port_deallocate(mach_task_self_, port);
 break;

      case 130:

 (void) mach_port_mod_refs(mach_task_self_, port,
      MACH_PORT_RIGHT_RECEIVE, -1);
 break;

      case 132:

 (void) mach_port_insert_right(mach_task_self_, port,
          port, 132);
 (void) mach_port_deallocate(mach_task_self_, port);
 break;

      case 131:

 (void) mach_port_extract_right(mach_task_self_, port,
           131,
           &port, &type);
 (void) mach_port_deallocate(mach_task_self_, port);
 break;
    }
}
