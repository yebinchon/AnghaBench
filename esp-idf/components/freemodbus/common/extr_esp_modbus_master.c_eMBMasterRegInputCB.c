
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_2__ {int (* master_reg_cb_input ) (int *,int ,int ) ;} ;


 int ESP_ERR_INVALID_STATE ;
 int MB_ENOERR ;
 int MB_MASTER_CHECK (int ,int ,char*) ;
 TYPE_1__* master_interface_ptr ;
 int stub1 (int *,int ,int ) ;

eMBErrorCode eMBMasterRegInputCB(UCHAR * pucRegBuffer, USHORT usAddress,
                                USHORT usNRegs)
{
    eMBErrorCode error = MB_ENOERR;
    MB_MASTER_CHECK((master_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    MB_MASTER_CHECK((master_interface_ptr->master_reg_cb_input != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    error = master_interface_ptr->master_reg_cb_input(pucRegBuffer, usAddress, usNRegs);
    return error;
}
