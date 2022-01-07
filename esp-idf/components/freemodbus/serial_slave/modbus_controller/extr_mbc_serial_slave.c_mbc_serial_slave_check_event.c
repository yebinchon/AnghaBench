
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mbs_event_group; } ;
typedef TYPE_1__ mb_slave_options_t ;
typedef scalar_t__ mb_event_group_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef int BaseType_t ;


 int ESP_ERR_INVALID_STATE ;
 int MB_SLAVE_ASSERT (int ) ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_2__* mbs_interface_ptr ;
 int pdFALSE ;
 int pdTRUE ;
 int portMAX_DELAY ;
 int xEventGroupWaitBits (int *,int ,int ,int ,int ) ;

__attribute__((used)) static mb_event_group_t mbc_serial_slave_check_event(mb_event_group_t group)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    MB_SLAVE_ASSERT(mbs_opts->mbs_event_group != ((void*)0));
    BaseType_t status = xEventGroupWaitBits(mbs_opts->mbs_event_group, (BaseType_t)group,
                                            pdTRUE , pdFALSE, portMAX_DELAY);
    return (mb_event_group_t)status;
}
