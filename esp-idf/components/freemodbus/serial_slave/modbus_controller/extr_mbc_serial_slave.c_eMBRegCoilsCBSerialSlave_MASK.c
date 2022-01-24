#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {TYPE_1__* mbs_area_descriptors; } ;
typedef  TYPE_2__ mb_slave_options_t ;
typedef  int eMBRegisterMode ;
typedef  int /*<<< orphan*/  eMBErrorCode ;
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {TYPE_2__ opts; } ;
struct TYPE_4__ {int size; scalar_t__ address; scalar_t__ start_offset; } ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  MB_EILLSTATE ; 
 int /*<<< orphan*/  MB_EINVAL ; 
 int /*<<< orphan*/  MB_ENOERR ; 
 int /*<<< orphan*/  MB_ENOREG ; 
 int /*<<< orphan*/  MB_EVENT_COILS_RD ; 
 int /*<<< orphan*/  MB_EVENT_COILS_WR ; 
 size_t MB_PARAM_COIL ; 
#define  MB_REG_READ 129 
#define  MB_REG_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* mbs_interface_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 

eMBErrorCode FUNC5(UCHAR* pucRegBuffer, USHORT usAddress,
        USHORT usNCoils, eMBRegisterMode eMode)
{
    FUNC0((mbs_interface_ptr != NULL), 
                    MB_EILLSTATE, "Slave stack uninitialized.");
    FUNC0((pucRegBuffer != NULL), 
                    MB_EINVAL, "Slave stack call failed.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    USHORT usRegCoilNregs = (USHORT)(mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].size >> 1); // number of registers in storage area
    USHORT usRegCoilsStart = (USHORT)mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].start_offset; // MB offset of coils registers
    UCHAR* pucRegCoilsBuf = (UCHAR*)mbs_opts->mbs_area_descriptors[MB_PARAM_COIL].address;
    eMBErrorCode eStatus = MB_ENOERR;
    USHORT iRegIndex;
    USHORT usCoils = usNCoils;
    usAddress--; // The address is already +1
    if ((usAddress >= usRegCoilsStart)
            && (usRegCoilNregs >= 1)
            && ((usAddress + usCoils) <= (usRegCoilsStart + (usRegCoilNregs << 4) + 1))
            && (pucRegCoilsBuf != NULL)
            && (usNCoils >= 1)) {
        iRegIndex = (USHORT) (usAddress - usRegCoilsStart);
        CHAR* pucCoilsDataBuf = (CHAR*)(pucRegCoilsBuf + (iRegIndex >> 3));
        switch (eMode) {
            case MB_REG_READ:
                while (usCoils > 0) {
                    UCHAR ucResult = FUNC3((UCHAR*)pucRegCoilsBuf, iRegIndex, 1);
                    FUNC4(pucRegBuffer, iRegIndex - (usAddress - usRegCoilsStart), 1, ucResult);
                    iRegIndex++;
                    usCoils--;
                }
                // Send an event to notify application task about event
                (void)FUNC1(MB_EVENT_COILS_RD);
                (void)FUNC2(MB_EVENT_COILS_RD, (uint16_t)usAddress,
                                (uint8_t*)(pucCoilsDataBuf), (uint16_t)usNCoils);
                break;
            case MB_REG_WRITE:
                while (usCoils > 0) {
                    UCHAR ucResult = FUNC3(pucRegBuffer,
                            iRegIndex - (usAddress - usRegCoilsStart), 1);
                    FUNC4((uint8_t*)pucRegCoilsBuf, iRegIndex, 1, ucResult);
                    iRegIndex++;
                    usCoils--;
                }
                // Send an event to notify application task about event
                (void)FUNC1(MB_EVENT_COILS_WR);
                (void)FUNC2(MB_EVENT_COILS_WR, (uint16_t)usAddress,
                                (uint8_t*)pucCoilsDataBuf, (uint16_t)usNCoils);
                break;
        } // switch ( eMode )
    } else {
        // If the configuration or input parameters are incorrect then return error to stack
        eStatus = MB_ENOREG;
    }
    return eStatus;
}