#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  eMBErrorCode ;
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MB_EIO ; 
 int /*<<< orphan*/  MB_ENOERR ; 
 size_t MB_SER_PDU_ADDR_OFF ; 
 size_t MB_SER_PDU_PDU_OFF ; 
 scalar_t__ MB_SER_PDU_SIZE_CRC ; 
 scalar_t__ MB_SER_PDU_SIZE_MAX ; 
 scalar_t__ MB_SER_PDU_SIZE_MIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * ucRTUBuf ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ usRcvBufferPos ; 

eMBErrorCode
FUNC4( UCHAR * pucRcvAddress, UCHAR ** pucFrame, USHORT * pusLength )
{
    eMBErrorCode    eStatus = MB_ENOERR;

    FUNC0(  );
    FUNC2( usRcvBufferPos < MB_SER_PDU_SIZE_MAX );

    /* Length and CRC check */
    if( ( usRcvBufferPos >= MB_SER_PDU_SIZE_MIN )
        && ( FUNC3( ( UCHAR * ) ucRTUBuf, usRcvBufferPos ) == 0 ) )
    {
        /* Save the address field. All frames are passed to the upper layed
         * and the decision if a frame is used is done there.
         */
        *pucRcvAddress = ucRTUBuf[MB_SER_PDU_ADDR_OFF];

        /* Total length of Modbus-PDU is Modbus-Serial-Line-PDU minus
         * size of address field and CRC checksum.
         */
        *pusLength = ( USHORT )( usRcvBufferPos - MB_SER_PDU_PDU_OFF - MB_SER_PDU_SIZE_CRC );

        /* Return the start of the Modbus PDU to the caller. */
        *pucFrame = ( UCHAR * ) & ucRTUBuf[MB_SER_PDU_PDU_OFF];
    }
    else
    {
        eStatus = MB_EIO;
    }

    FUNC1(  );
    return eStatus;
}