
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mbm_event_group; } ;
typedef TYPE_1__ mb_master_options_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef int BaseType_t ;
typedef scalar_t__ BOOL ;


 int EV_MASTER_FRAME_TRANSMITTED ;
 int MB_EVENT_STACK_STARTED ;
 int MB_MASTER_ASSERT (int ) ;
 int eMBMasterPoll () ;
 TYPE_2__* mbm_interface_ptr ;
 int pdFALSE ;
 int portMAX_DELAY ;
 int xEventGroupWaitBits (int ,int,int ,int ,int ) ;
 int xMBMasterPortEventPost (int ) ;
 scalar_t__ xMBMasterPortSerialTxPoll () ;

__attribute__((used)) static void modbus_master_task(void *pvParameters)
{

    MB_MASTER_ASSERT(mbm_interface_ptr != ((void*)0));
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;

    for (;;) {

        BaseType_t status = xEventGroupWaitBits(mbm_opts->mbm_event_group,
                                                (BaseType_t)(MB_EVENT_STACK_STARTED),
                                                pdFALSE,
                                                pdFALSE,
                                                portMAX_DELAY);

        if (status & MB_EVENT_STACK_STARTED) {
            (void)eMBMasterPoll();

            BOOL xSentState = xMBMasterPortSerialTxPoll();
            if (xSentState) {

                (void)xMBMasterPortEventPost(EV_MASTER_FRAME_TRANSMITTED);
            }
        }
    }
}
