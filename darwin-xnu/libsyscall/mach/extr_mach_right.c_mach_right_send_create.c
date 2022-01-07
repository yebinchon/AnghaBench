
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_right_send_t ;
struct TYPE_3__ {int mrr_name; } ;
typedef TYPE_1__ mach_right_recv_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int _mach_assert (char*,int ) ;
 int mach_port_insert_right (int ,int ,int ,int ) ;
 int mach_right_send (int ) ;
 int mach_task_self () ;

mach_right_send_t
mach_right_send_create(mach_right_recv_t r)
{
 kern_return_t kr = KERN_FAILURE;

 kr = mach_port_insert_right(mach_task_self(), r.mrr_name, r.mrr_name,
   MACH_MSG_TYPE_MAKE_SEND);
 _mach_assert("create send right", kr);

 return mach_right_send(r.mrr_name);
}
