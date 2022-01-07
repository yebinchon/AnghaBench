
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mbm_reg_buffer_ptr; int mbm_reg_buffer_size; } ;
typedef TYPE_1__ mb_master_options_t ;
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
 TYPE_2__* mbm_interface_ptr ;

eMBErrorCode eMBRegInputCBSerialMaster(UCHAR * pucRegBuffer, USHORT usAddress,
                                USHORT usNRegs)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    MB_EILLSTATE,
                    "Master interface uninitialized.");
    MB_MASTER_CHECK((pucRegBuffer != ((void*)0)), MB_EINVAL,
                    "Master stack processing error.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;

    USHORT usRegInputNregs = (USHORT)mbm_opts->mbm_reg_buffer_size;
    UCHAR* pucInputBuffer = (UCHAR*)mbm_opts->mbm_reg_buffer_ptr;
    USHORT usRegs = usNRegs;
    eMBErrorCode eStatus = MB_ENOERR;

    if ((pucInputBuffer != ((void*)0))
            && (usNRegs >= 1)
            && (usRegInputNregs == usRegs)) {
        while (usRegs > 0) {
            _XFER_2_RD(pucInputBuffer, pucRegBuffer);
            usRegs -= 1;
        }
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
