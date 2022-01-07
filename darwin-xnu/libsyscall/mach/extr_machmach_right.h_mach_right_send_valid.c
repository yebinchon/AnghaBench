
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mrs_name; } ;
typedef TYPE_1__ mach_right_send_t ;


 int MACH_PORT_VALID (int ) ;

__attribute__((used)) static inline bool
mach_right_send_valid(mach_right_send_t mrs)
{
 return MACH_PORT_VALID(mrs.mrs_name);
}
