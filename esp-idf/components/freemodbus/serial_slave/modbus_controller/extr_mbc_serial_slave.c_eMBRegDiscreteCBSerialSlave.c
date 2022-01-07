
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* mbs_area_descriptors; } ;
typedef TYPE_2__ mb_slave_options_t ;
typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_6__ {TYPE_2__ opts; } ;
struct TYPE_4__ {int size; scalar_t__ address; scalar_t__ start_offset; } ;


 int MB_EILLSTATE ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENOREG ;
 int MB_EVENT_DISCRETE_RD ;
 size_t MB_PARAM_DISCRETE ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_3__* mbs_interface_ptr ;
 int send_param_access_notification (int ) ;
 int send_param_info (int ,int ,int *,int ) ;
 int xMBUtilGetBits (int*,int,int) ;

eMBErrorCode eMBRegDiscreteCBSerialSlave(UCHAR* pucRegBuffer, USHORT usAddress,
                            USHORT usNDiscrete)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    MB_EILLSTATE, "Slave stack uninitialized.");
    MB_SLAVE_CHECK((pucRegBuffer != ((void*)0)),
                    MB_EINVAL, "Slave stack call failed.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    USHORT usRegDiscreteNregs = (USHORT)(mbs_opts->mbs_area_descriptors[MB_PARAM_DISCRETE].size >> 1);
    USHORT usRegDiscreteStart = (USHORT)mbs_opts->mbs_area_descriptors[MB_PARAM_DISCRETE].start_offset;
    UCHAR* pucRegDiscreteBuf = (UCHAR*)mbs_opts->mbs_area_descriptors[MB_PARAM_DISCRETE].address;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegIndex, iRegBitIndex, iNReg;
    UCHAR* pucDiscreteInputBuf;
    iNReg = usNDiscrete / 8 + 1;
    pucDiscreteInputBuf = (UCHAR*) pucRegDiscreteBuf;

    usAddress--;
    if ((usAddress >= usRegDiscreteStart)
            && (usRegDiscreteNregs >= 1)
            && (pucRegDiscreteBuf != ((void*)0))
            && ((usAddress + usNDiscrete) <= (usRegDiscreteStart + (usRegDiscreteNregs * 16)))
            && (usNDiscrete >= 1)) {
        iRegIndex = (USHORT) (usAddress - usRegDiscreteStart) / 8;
        iRegBitIndex = (USHORT)(usAddress - usRegDiscreteStart) % 8;
        UCHAR* pucTempBuf = &pucDiscreteInputBuf[iRegIndex];
        while (iNReg > 0) {
            *pucRegBuffer++ = xMBUtilGetBits(&pucDiscreteInputBuf[iRegIndex++], iRegBitIndex, 8);
            iNReg--;
        }
        pucRegBuffer--;

        usNDiscrete = usNDiscrete % 8;

        *pucRegBuffer = *pucRegBuffer << (8 - usNDiscrete);
        *pucRegBuffer = *pucRegBuffer >> (8 - usNDiscrete);

        (void)send_param_access_notification(MB_EVENT_DISCRETE_RD);
        (void)send_param_info(MB_EVENT_DISCRETE_RD, (uint16_t)usAddress,
                            (uint8_t*)pucTempBuf, (uint16_t)usNDiscrete);
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
