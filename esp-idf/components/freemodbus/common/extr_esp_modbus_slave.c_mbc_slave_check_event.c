
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mb_event_group_t ;
struct TYPE_2__ {int (* check_event ) (int ) ;} ;


 int MB_EVENT_NO_EVENTS ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_1__* slave_interface_ptr ;
 int stub1 (int ) ;

mb_event_group_t mbc_slave_check_event(mb_event_group_t group)
{
    MB_SLAVE_CHECK((slave_interface_ptr != ((void*)0)),
                    MB_EVENT_NO_EVENTS,
                    "Slave interface is not correctly initialized.");
    MB_SLAVE_CHECK((slave_interface_ptr->check_event != ((void*)0)),
                    MB_EVENT_NO_EVENTS,
                    "Slave interface is not correctly initialized.");
    mb_event_group_t event = slave_interface_ptr->check_event(group);
    return event;
}
