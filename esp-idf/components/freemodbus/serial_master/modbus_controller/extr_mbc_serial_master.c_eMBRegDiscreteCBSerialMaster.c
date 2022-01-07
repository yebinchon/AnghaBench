
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mbm_reg_buffer_ptr; scalar_t__ mbm_reg_buffer_size; } ;
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
 TYPE_2__* mbm_interface_ptr ;
 int xMBUtilSetBits (int *,int,int,int ) ;

eMBErrorCode eMBRegDiscreteCBSerialMaster(UCHAR * pucRegBuffer, USHORT usAddress,
                            USHORT usNDiscrete)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    MB_EILLSTATE, "Master interface uninitialized.");
    MB_MASTER_CHECK((pucRegBuffer != ((void*)0)),
                    MB_EINVAL, "Master stack processing error.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;
    USHORT usRegDiscreteNregs = (USHORT)mbm_opts->mbm_reg_buffer_size;
    UCHAR* pucRegDiscreteBuf = (UCHAR*)mbm_opts->mbm_reg_buffer_ptr;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegBitIndex, iNReg;
    UCHAR* pucDiscreteInputBuf;
    iNReg = usNDiscrete / 8 + 1;
    pucDiscreteInputBuf = (UCHAR*) pucRegDiscreteBuf;

    usAddress--;
    if ((usRegDiscreteNregs >= 1)
            && (pucRegDiscreteBuf != ((void*)0))
            && (usNDiscrete >= 1)) {
        iRegBitIndex = (USHORT)(usAddress) % 8;
        while (iNReg > 1)
        {
            xMBUtilSetBits(pucDiscreteInputBuf++, iRegBitIndex, 8, *pucRegBuffer++);
            iNReg--;
        }

        usNDiscrete = usNDiscrete % 8;

        if (usNDiscrete != 0)
        {
            xMBUtilSetBits(pucDiscreteInputBuf, iRegBitIndex, usNDiscrete, *pucRegBuffer++);
        }
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
