
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
typedef int eMBRegisterMode ;
typedef int eMBErrorCode ;
typedef scalar_t__ USHORT ;
typedef int UCHAR ;
struct TYPE_6__ {TYPE_2__ opts; } ;
struct TYPE_4__ {int size; scalar_t__ address; scalar_t__ start_offset; } ;


 int MB_EILLSTATE ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENOREG ;
 int MB_EVENT_HOLDING_REG_RD ;
 int MB_EVENT_HOLDING_REG_WR ;
 size_t MB_PARAM_HOLDING ;


 int MB_SLAVE_CHECK (int ,int ,char*) ;
 int _XFER_2_RD (int *,int *) ;
 int _XFER_2_WR (int *,int *) ;
 TYPE_3__* mbs_interface_ptr ;
 int send_param_access_notification (int ) ;
 int send_param_info (int ,int ,int *,int ) ;

eMBErrorCode eMBRegHoldingCBSerialSlave(UCHAR * pucRegBuffer, USHORT usAddress,
        USHORT usNRegs, eMBRegisterMode eMode)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    MB_EILLSTATE, "Slave stack uninitialized.");
    MB_SLAVE_CHECK((pucRegBuffer != ((void*)0)),
                    MB_EINVAL, "Slave stack call failed.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    USHORT usRegHoldingNregs = (USHORT)(mbs_opts->mbs_area_descriptors[MB_PARAM_HOLDING].size >> 1);
    USHORT usRegHoldingStart = (USHORT)mbs_opts->mbs_area_descriptors[MB_PARAM_HOLDING].start_offset;
    UCHAR* pucHoldingBuffer = (UCHAR*)mbs_opts->mbs_area_descriptors[MB_PARAM_HOLDING].address;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegIndex;
    USHORT usRegs = usNRegs;

    if ((usAddress >= usRegHoldingStart)
            && (pucHoldingBuffer != ((void*)0))
            && ((usAddress + usRegs) <= (usRegHoldingStart + usRegHoldingNregs + 1))
            && (usRegHoldingNregs >= 1)
            && (usNRegs >= 1)) {
        iRegIndex = (USHORT) (usAddress - usRegHoldingStart - 1);
        iRegIndex <<= 1;
        pucHoldingBuffer += iRegIndex;
        UCHAR* pucBufferStart = pucHoldingBuffer;
        switch (eMode) {
            case 129:
                while (usRegs > 0) {
                    _XFER_2_RD(pucRegBuffer, pucHoldingBuffer);
                    iRegIndex += 2;
                    usRegs -= 1;
                };

                (void)send_param_access_notification(MB_EVENT_HOLDING_REG_RD);

                (void)send_param_info(MB_EVENT_HOLDING_REG_RD, (uint16_t)usAddress,
                                (uint8_t*)pucBufferStart, (uint16_t)usNRegs);
                break;
            case 128:
                while (usRegs > 0) {
                    _XFER_2_WR(pucHoldingBuffer, pucRegBuffer);
                    pucHoldingBuffer += 2;
                    iRegIndex += 2;
                    usRegs -= 1;
                };

                (void)send_param_access_notification(MB_EVENT_HOLDING_REG_WR);

                (void)send_param_info(MB_EVENT_HOLDING_REG_WR, (uint16_t)usAddress,
                                (uint8_t*)pucBufferStart, (uint16_t)usNRegs);
                break;
        }
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
