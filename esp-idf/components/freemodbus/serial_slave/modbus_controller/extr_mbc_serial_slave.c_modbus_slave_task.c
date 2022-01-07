
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mbs_event_group; } ;
typedef TYPE_1__ mb_slave_options_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef int BaseType_t ;
typedef scalar_t__ BOOL ;


 int EV_FRAME_SENT ;
 int MB_EVENT_STACK_STARTED ;
 int MB_SLAVE_ASSERT (int ) ;
 int eMBPoll () ;
 TYPE_2__* mbs_interface_ptr ;
 int pdFALSE ;
 int portMAX_DELAY ;
 int xEventGroupWaitBits (int ,int,int ,int ,int ) ;
 int xMBPortEventPost (int ) ;
 scalar_t__ xMBPortSerialTxPoll () ;

__attribute__((used)) static void modbus_slave_task(void *pvParameters)
{

    MB_SLAVE_ASSERT(mbs_interface_ptr != ((void*)0));
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;

    MB_SLAVE_ASSERT(mbs_opts != ((void*)0));

    for (;;) {
        BaseType_t status = xEventGroupWaitBits(mbs_opts->mbs_event_group,
                                                (BaseType_t)(MB_EVENT_STACK_STARTED),
                                                pdFALSE,
                                                pdFALSE,
                                                portMAX_DELAY);

        if (status & MB_EVENT_STACK_STARTED) {
            (void)eMBPoll();

            BOOL xSentState = xMBPortSerialTxPoll();
            if (xSentState) {
                (void)xMBPortEventPost( EV_FRAME_SENT );
            }
        }
    }
}
