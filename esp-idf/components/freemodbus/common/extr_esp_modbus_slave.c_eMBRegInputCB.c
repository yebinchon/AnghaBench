
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_2__ {int (* slave_reg_cb_input ) (int *,int ,int ) ;} ;


 int ESP_ERR_INVALID_STATE ;
 int MB_ENOERR ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_1__* slave_interface_ptr ;
 int stub1 (int *,int ,int ) ;

eMBErrorCode eMBRegInputCB(UCHAR * pucRegBuffer, USHORT usAddress,
                                USHORT usNRegs)
{
    eMBErrorCode error = MB_ENOERR;
    MB_SLAVE_CHECK((slave_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    MB_SLAVE_CHECK((slave_interface_ptr->slave_reg_cb_input != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    error = slave_interface_ptr->slave_reg_cb_input(pucRegBuffer, usAddress, usNRegs);
    return error;
}
