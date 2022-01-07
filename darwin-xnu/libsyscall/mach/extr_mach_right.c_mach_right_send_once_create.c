
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_right_send_once_t ;
struct TYPE_3__ {int mrr_name; } ;
typedef TYPE_1__ mach_right_recv_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_name_t ;
typedef int kern_return_t ;


 int MACH_MSG_TYPE_MAKE_SEND_ONCE ;
 int MACH_PORT_NULL ;
 int _mach_assert (char*,int ) ;
 int mach_port_extract_right (int ,int ,int ,int *,int *) ;
 int mach_right_send_once (int ) ;
 int mach_task_self () ;

mach_right_send_once_t
mach_right_send_once_create(mach_right_recv_t r)
{
 mach_msg_type_name_t right = 0;
 mach_port_t so = MACH_PORT_NULL;
 kern_return_t kr = mach_port_extract_right(mach_task_self(), r.mrr_name,
   MACH_MSG_TYPE_MAKE_SEND_ONCE, &so, &right);
 _mach_assert("create send-once right", kr);

 return mach_right_send_once(so);
}
