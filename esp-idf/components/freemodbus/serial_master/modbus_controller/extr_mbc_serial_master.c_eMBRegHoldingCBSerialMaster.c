
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mbm_reg_buffer_ptr; int mbm_reg_buffer_size; } ;
typedef TYPE_1__ mb_master_options_t ;
typedef int eMBRegisterMode ;
typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_4__ {TYPE_1__ opts; } ;


 int MB_EILLSTATE ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENOREG ;
 int MB_MASTER_CHECK (int ,int ,char*) ;


 int _XFER_2_RD (int *,int *) ;
 int _XFER_2_WR (int *,int *) ;
 TYPE_2__* mbm_interface_ptr ;

eMBErrorCode eMBRegHoldingCBSerialMaster(UCHAR * pucRegBuffer, USHORT usAddress,
        USHORT usNRegs, eMBRegisterMode eMode)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    MB_EILLSTATE,
                    "Master interface uninitialized.");
    MB_MASTER_CHECK((pucRegBuffer != ((void*)0)), MB_EINVAL,
                    "Master stack processing error.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;
    USHORT usRegHoldingNregs = (USHORT)mbm_opts->mbm_reg_buffer_size;
    UCHAR* pucHoldingBuffer = (UCHAR*)mbm_opts->mbm_reg_buffer_ptr;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT usRegs = usNRegs;

    if ((pucHoldingBuffer != ((void*)0))
            && (usRegHoldingNregs == usNRegs)
            && (usNRegs >= 1)) {
        switch (eMode) {
            case 128:
                while (usRegs > 0) {
                    _XFER_2_RD(pucRegBuffer, pucHoldingBuffer);
                    usRegs -= 1;
                };
                break;
            case 129:
                while (usRegs > 0) {
                    _XFER_2_WR(pucHoldingBuffer, pucRegBuffer);
                    pucHoldingBuffer += 2;
                    usRegs -= 1;
                };
                break;
        }
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
