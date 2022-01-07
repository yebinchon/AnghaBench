
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
typedef scalar_t__ USHORT ;
typedef int UCHAR ;
struct TYPE_6__ {TYPE_2__ opts; } ;
struct TYPE_4__ {int size; scalar_t__ address; scalar_t__ start_offset; } ;


 int MB_EILLSTATE ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENOREG ;
 int MB_EVENT_INPUT_REG_RD ;
 size_t MB_PARAM_INPUT ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 int _XFER_2_RD (int *,int *) ;
 TYPE_3__* mbs_interface_ptr ;
 int send_param_access_notification (int ) ;
 int send_param_info (int ,int ,int *,int ) ;

eMBErrorCode eMBRegInputCBSerialSlave(UCHAR * pucRegBuffer, USHORT usAddress,
                                USHORT usNRegs)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    MB_EILLSTATE, "Slave stack uninitialized.");
    MB_SLAVE_CHECK((pucRegBuffer != ((void*)0)),
                    MB_EINVAL, "Slave stack call failed.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    USHORT usRegInputNregs = (USHORT)(mbs_opts->mbs_area_descriptors[MB_PARAM_INPUT].size >> 1);
    USHORT usInputRegStart = (USHORT)mbs_opts->mbs_area_descriptors[MB_PARAM_INPUT].start_offset;
    UCHAR* pucInputBuffer = (UCHAR*)mbs_opts->mbs_area_descriptors[MB_PARAM_INPUT].address;
    USHORT usRegs = usNRegs;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegIndex;

    if ((usAddress >= usInputRegStart)
            && (pucInputBuffer != ((void*)0))
            && (usNRegs >= 1)
            && ((usAddress + usRegs) <= (usInputRegStart + usRegInputNregs + 1))
            && (usRegInputNregs >= 1)) {
        iRegIndex = (USHORT)(usAddress - usInputRegStart - 1);
        iRegIndex <<= 1;
        pucInputBuffer += iRegIndex;
        UCHAR* pucBufferStart = pucInputBuffer;
        while (usRegs > 0) {
            _XFER_2_RD(pucRegBuffer, pucInputBuffer);
            iRegIndex += 2;
            usRegs -= 1;
        }

        (void)send_param_access_notification(MB_EVENT_INPUT_REG_RD);

        (void)send_param_info(MB_EVENT_INPUT_REG_RD, (uint16_t)usAddress,
                        (uint8_t*)pucBufferStart, (uint16_t)usNRegs);
    } else {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}
