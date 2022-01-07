
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_4__ {int pc; } ;
struct TYPE_5__ {TYPE_1__ PcbData; } ;
struct TYPE_6__ {TYPE_2__ machine; } ;


 TYPE_3__* current_thread () ;

user_addr_t
get_useraddr()
{
 return (current_thread()->machine.PcbData.pc);
}
