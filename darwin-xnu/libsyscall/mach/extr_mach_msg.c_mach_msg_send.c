
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_msg_return_t ;
struct TYPE_4__ {int msgh_size; } ;
typedef TYPE_1__ mach_msg_header_t ;


 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_PORT_NULL ;
 int MACH_SEND_MSG ;
 int mach_msg (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;

mach_msg_return_t
mach_msg_send(mach_msg_header_t *msg)
{
 return mach_msg(msg, MACH_SEND_MSG,
   msg->msgh_size, 0, MACH_PORT_NULL,
   MACH_MSG_TIMEOUT_NONE, MACH_PORT_NULL);
}
