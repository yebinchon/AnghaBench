
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_3__ {int upcb; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;


 TYPE_2__* current_thread () ;
 int get_saved_state_pc (int ) ;

user_addr_t
get_useraddr()
{
 return (get_saved_state_pc(current_thread()->machine.upcb));
}
