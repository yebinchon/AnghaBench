
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int parity; int baudrate; int port; int slave_addr; int mode; } ;
struct TYPE_6__ {int * mbs_task_handle; int * mbs_notification_queue_handle; int * mbs_event_group; TYPE_1__ mbs_comm; scalar_t__ port_type; } ;
typedef TYPE_2__ mb_slave_options_t ;
typedef int mb_slave_interface_t ;
typedef scalar_t__ mb_port_type_t ;
typedef int mb_param_info_t ;
typedef int esp_err_t ;
typedef int UCHAR ;
struct TYPE_7__ {int slave_reg_cb_coils; int slave_reg_cb_holding; int slave_reg_cb_input; int slave_reg_cb_discrete; int start; int setup; int set_descriptor; int (* init ) (scalar_t__,void**) ;int get_param_info; int destroy; int check_event; TYPE_2__ opts; } ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MB_CONTROLLER_NOTIFY_QUEUE_SIZE ;
 int MB_CONTROLLER_PRIORITY ;
 int MB_CONTROLLER_STACK_SIZE ;
 int MB_DEVICE_ADDRESS ;
 int MB_DEVICE_SPEED ;
 int MB_MODE_RTU ;
 int MB_PARITY_NONE ;
 scalar_t__ MB_PORT_SERIAL_SLAVE ;
 int MB_SLAVE_ASSERT (int ) ;
 int MB_SLAVE_CHECK (int,int ,char*,...) ;
 int MB_UART_PORT ;
 int eMBRegCoilsCBSerialSlave ;
 int eMBRegDiscreteCBSerialSlave ;
 int eMBRegHoldingCBSerialSlave ;
 int eMBRegInputCBSerialSlave ;
 TYPE_3__* malloc (int) ;
 int mbc_serial_slave_check_event ;
 int mbc_serial_slave_destroy ;
 int mbc_serial_slave_get_param_info ;
 int mbc_serial_slave_set_descriptor ;
 int mbc_serial_slave_setup ;
 int mbc_serial_slave_start ;
 TYPE_3__* mbs_interface_ptr ;
 int modbus_slave_task ;
 scalar_t__ pdPASS ;
 int vMBPortSetMode (int ) ;
 int vTaskDelete (int *) ;
 int * xEventGroupCreate () ;
 int * xQueueCreate (int ,int) ;
 scalar_t__ xTaskCreate (void*,char*,int ,int *,int ,int **) ;

esp_err_t mbc_serial_slave_create(mb_port_type_t port_type, void** handler)
{
    MB_SLAVE_CHECK((port_type == MB_PORT_SERIAL_SLAVE),
                    ESP_ERR_NOT_SUPPORTED,
                    "mb port not supported = %u.", (uint32_t)port_type);

    if (mbs_interface_ptr == ((void*)0)) {
        mbs_interface_ptr = malloc(sizeof(mb_slave_interface_t));
    }
    MB_SLAVE_ASSERT(mbs_interface_ptr != ((void*)0));
    vMBPortSetMode((UCHAR)port_type);
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    mbs_opts->port_type = MB_PORT_SERIAL_SLAVE;


    mbs_opts->mbs_comm.mode = MB_MODE_RTU;
    mbs_opts->mbs_comm.slave_addr = MB_DEVICE_ADDRESS;
    mbs_opts->mbs_comm.port = MB_UART_PORT;
    mbs_opts->mbs_comm.baudrate = MB_DEVICE_SPEED;
    mbs_opts->mbs_comm.parity = MB_PARITY_NONE;


    BaseType_t status = 0;

    mbs_opts->mbs_event_group = xEventGroupCreate();
    MB_SLAVE_CHECK((mbs_opts->mbs_event_group != ((void*)0)),
            ESP_ERR_NO_MEM, "mb event group error.");

    mbs_opts->mbs_notification_queue_handle = xQueueCreate(
                                                MB_CONTROLLER_NOTIFY_QUEUE_SIZE,
                                                sizeof(mb_param_info_t));
    MB_SLAVE_CHECK((mbs_opts->mbs_notification_queue_handle != ((void*)0)),
            ESP_ERR_NO_MEM, "mb notify queue creation error.");

    status = xTaskCreate((void*)&modbus_slave_task,
                            "modbus_slave_task",
                            MB_CONTROLLER_STACK_SIZE,
                            ((void*)0),
                            MB_CONTROLLER_PRIORITY,
                            &mbs_opts->mbs_task_handle);
    if (status != pdPASS) {
        vTaskDelete(mbs_opts->mbs_task_handle);
        MB_SLAVE_CHECK((status == pdPASS), ESP_ERR_NO_MEM,
                "mb controller task creation error, xTaskCreate() returns (0x%x).",
                (uint32_t)status);
    }
    MB_SLAVE_ASSERT(mbs_opts->mbs_task_handle != ((void*)0));


    mbs_interface_ptr->check_event = mbc_serial_slave_check_event;
    mbs_interface_ptr->destroy = mbc_serial_slave_destroy;
    mbs_interface_ptr->get_param_info = mbc_serial_slave_get_param_info;
    mbs_interface_ptr->init = mbc_serial_slave_create;
    mbs_interface_ptr->set_descriptor = mbc_serial_slave_set_descriptor;
    mbs_interface_ptr->setup = mbc_serial_slave_setup;
    mbs_interface_ptr->start = mbc_serial_slave_start;


    mbs_interface_ptr->slave_reg_cb_discrete = eMBRegDiscreteCBSerialSlave;
    mbs_interface_ptr->slave_reg_cb_input = eMBRegInputCBSerialSlave;
    mbs_interface_ptr->slave_reg_cb_holding = eMBRegHoldingCBSerialSlave;
    mbs_interface_ptr->slave_reg_cb_coils = eMBRegCoilsCBSerialSlave;

    *handler = (void*)mbs_interface_ptr;

    return ESP_OK;
}
