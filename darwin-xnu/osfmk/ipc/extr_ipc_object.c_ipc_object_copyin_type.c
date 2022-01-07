
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_name_t ;
 int MACH_MSG_TYPE_PORT_NONE ;
 int MACH_MSG_TYPE_PORT_RECEIVE ;
 int MACH_MSG_TYPE_PORT_SEND ;
 int MACH_MSG_TYPE_PORT_SEND_ONCE ;

mach_msg_type_name_t
ipc_object_copyin_type(
 mach_msg_type_name_t msgt_name)
{
 switch (msgt_name) {

     case 130:
  return MACH_MSG_TYPE_PORT_RECEIVE;

     case 128:
     case 131:
  return MACH_MSG_TYPE_PORT_SEND_ONCE;

     case 129:
     case 132:
     case 136:
  return MACH_MSG_TYPE_PORT_SEND;

     case 135:
     case 134:
     case 133:

     default:
  return MACH_MSG_TYPE_PORT_NONE;
 }
}
