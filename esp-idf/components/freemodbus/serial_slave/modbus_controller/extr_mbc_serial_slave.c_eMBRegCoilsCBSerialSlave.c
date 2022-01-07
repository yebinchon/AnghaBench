
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
typedef int CHAR ;


 int MB_EILLSTATE ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENOREG ;
 int MB_EVENT_COILS_RD ;
 int MB_EVENT_COILS_WR ;
 size_t MB_PARAM_COIL ;


 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_3__* mbs_interface_ptr ;
 int send_param_access_notification (int ) ;
 int send_param_info (int ,int ,int *,int ) ;
 int xMBUtilGetBits (int *,scalar_t__,int) ;
 int xMBUtilSetBits (int *,scalar_t__,int,int ) ;

eMBErrorCode eMBRegCoilsCBSerialSlave(UCHAR* pucRegBuffer, USHORT usAddress,
        USHORT usNCoils, eMBRegisterMode eMode)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    MB_EILLSTATE, "Slave stack uninitialized.");
    MB_SLAVE_CHECK((pucRegBuffer != ((void*)0)),
                    MB_EINVAL, "Slave stack call failed.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    USHORT usRegCoilNregs = (USHORT)(mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].size >> 1);
    USHORT usRegCoilsStart = (USHORT)mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].start_offset;
    UCHAR* pucRegCoilsBuf = (UCHAR*)mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].address;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegIndex;
    USHORT usCoils = usNCoils;
    usAddress--;
    if ((usAddress >= usRegCoilsStart)
            && (usRegCoilNregs >= 1)
            && ((usAddress + usCoils) <= (usRegCoilsStart + (usRegCoilNregs << 4) + 1))
            && (pucRegCoilsBuf != ((void*)0))
            && (usNCoils >= 1)) {
        iRegIndex = (USHORT) (usAddress - usRegCoilsStart);
        CHAR* pucCoilsDataBuf = (CHAR*)(pucRegCoilsBuf + (iRegIndex >> 3));
        switch (eMode) {
            case 129:
                while (usCoils > 0) {
                    UCHAR ucResult = xMBUtilGetBits((UCHAR*)pucRegCoilsBuf, iRegIndex, 1);
                    xMBUtilSetBits(pucRegBuffer, iRegIndex - (usAddress - usRegCoilsStart), 1, ucResult);
                    iRegIndex++;
                    usCoils--;
                }

                (void)send_param_access_notification(MB_EVENT_COILS_RD);
                (void)send_param_info(MB_EVENT_COILS_RD, (uint16_t)usAddress,
                                (uint8_t*)(pucCoilsDataBuf), (uint16_t)usNCoils);
                break;
            case 128:
                while (usCoils > 0) {
                    UCHAR ucResult = xMBUtilGetBits(pucRegBuffer,
                            iRegIndex - (usAddress - usRegCoilsStart), 1);
                    xMBUtilSetBits((uint8_t*)pucRegCoilsBuf, iRegIndex, 1, ucResult);
                    iRegIndex++;
                    usCoils--;
                }

                (void)send_param_access_notification(MB_EVENT_COILS_WR);
                (void)send_param_info(MB_EVENT_COILS_WR, (uint16_t)usAddress,
                                (uint8_t*)pucCoilsDataBuf, (uint16_t)usNCoils);
                break;
        }
    } else {

        eStatus = MB_ENOREG;
    }
    return eStatus;
}
