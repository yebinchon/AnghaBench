
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ mb_port_type_t ;
struct TYPE_5__ {int parity; int baudrate; int port; int mode; } ;
struct TYPE_6__ {int * mbm_task_handle; int * mbm_event_group; TYPE_1__ mbm_comm; scalar_t__ port_type; } ;
typedef TYPE_2__ mb_master_options_t ;
typedef int mb_master_interface_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int master_reg_cb_coils; int master_reg_cb_holding; int master_reg_cb_input; int master_reg_cb_discrete; int set_parameter; int set_descriptor; int send_request; int get_parameter; int get_cid_info; int start; int setup; int destroy; int (* init ) (scalar_t__,void**) ;TYPE_2__ opts; } ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MB_CONTROLLER_PRIORITY ;
 int MB_CONTROLLER_STACK_SIZE ;
 int MB_DEVICE_SPEED ;
 int MB_MASTER_ASSERT (int ) ;
 int MB_MASTER_CHECK (int,int ,char*,...) ;
 int MB_MODE_RTU ;
 int MB_PARITY_NONE ;
 scalar_t__ MB_PORT_SERIAL_MASTER ;
 int MB_UART_PORT ;
 int eMBRegCoilsCBSerialMaster ;
 int eMBRegDiscreteCBSerialMaster ;
 int eMBRegHoldingCBSerialMaster ;
 int eMBRegInputCBSerialMaster ;
 TYPE_3__* malloc (int) ;
 int mbc_serial_master_destroy ;
 int mbc_serial_master_get_cid_info ;
 int mbc_serial_master_get_parameter ;
 int mbc_serial_master_send_request ;
 int mbc_serial_master_set_descriptor ;
 int mbc_serial_master_set_parameter ;
 int mbc_serial_master_setup ;
 int mbc_serial_master_start ;
 TYPE_3__* mbm_interface_ptr ;
 int modbus_master_task ;
 scalar_t__ pdPASS ;
 int vTaskDelete (int *) ;
 int * xEventGroupCreate () ;
 scalar_t__ xTaskCreate (void*,char*,int ,int *,int ,int **) ;

esp_err_t mbc_serial_master_create(mb_port_type_t port_type, void** handler)
{
    MB_MASTER_CHECK((port_type == MB_PORT_SERIAL_MASTER),
                        ESP_ERR_INVALID_STATE, "mb incorrect port selected = %u.",
                        (uint32_t)port_type);

    if (mbm_interface_ptr == ((void*)0)) {
        mbm_interface_ptr = malloc(sizeof(mb_master_interface_t));
    }
    MB_MASTER_ASSERT(mbm_interface_ptr != ((void*)0));


    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;
    mbm_opts->port_type = MB_PORT_SERIAL_MASTER;

    mbm_opts->mbm_comm.mode = MB_MODE_RTU;
    mbm_opts->mbm_comm.port = MB_UART_PORT;
    mbm_opts->mbm_comm.baudrate = MB_DEVICE_SPEED;
    mbm_opts->mbm_comm.parity = MB_PARITY_NONE;


    BaseType_t status = 0;

    mbm_opts->mbm_event_group = xEventGroupCreate();
    MB_MASTER_CHECK((mbm_opts->mbm_event_group != ((void*)0)),
                        ESP_ERR_NO_MEM, "mb event group error.");

    status = xTaskCreate((void*)&modbus_master_task,
                            "modbus_matask",
                            MB_CONTROLLER_STACK_SIZE,
                            ((void*)0),
                            MB_CONTROLLER_PRIORITY,
                            &mbm_opts->mbm_task_handle);
    if (status != pdPASS) {
        vTaskDelete(mbm_opts->mbm_task_handle);
        MB_MASTER_CHECK((status == pdPASS), ESP_ERR_NO_MEM,
                "mb controller task creation error, xTaskCreate() returns (0x%x).",
                (uint32_t)status);
    }
    MB_MASTER_ASSERT(mbm_opts->mbm_task_handle != ((void*)0));


    mbm_interface_ptr->init = mbc_serial_master_create;
    mbm_interface_ptr->destroy = mbc_serial_master_destroy;
    mbm_interface_ptr->setup = mbc_serial_master_setup;
    mbm_interface_ptr->start = mbc_serial_master_start;
    mbm_interface_ptr->get_cid_info = mbc_serial_master_get_cid_info;
    mbm_interface_ptr->get_parameter = mbc_serial_master_get_parameter;
    mbm_interface_ptr->send_request = mbc_serial_master_send_request;
    mbm_interface_ptr->set_descriptor = mbc_serial_master_set_descriptor;
    mbm_interface_ptr->set_parameter = mbc_serial_master_set_parameter;

    mbm_interface_ptr->master_reg_cb_discrete = eMBRegDiscreteCBSerialMaster;
    mbm_interface_ptr->master_reg_cb_input = eMBRegInputCBSerialMaster;
    mbm_interface_ptr->master_reg_cb_holding = eMBRegHoldingCBSerialMaster;
    mbm_interface_ptr->master_reg_cb_coils = eMBRegCoilsCBSerialMaster;

    *handler = mbm_interface_ptr;

    return ESP_OK;
}
