
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ mach_right_recv_t ;
typedef int mach_port_name_t ;



__attribute__((used)) static inline mach_right_recv_t
mach_right_recv(mach_port_name_t pn)
{
 mach_right_recv_t mrr = {pn};
 return mrr;
}
