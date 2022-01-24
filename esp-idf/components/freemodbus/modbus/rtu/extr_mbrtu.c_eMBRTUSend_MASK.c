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
typedef  int USHORT ;
typedef  void* UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MB_EIO ; 
 int /*<<< orphan*/  MB_ENOERR ; 
 size_t MB_SER_PDU_ADDR_OFF ; 
 scalar_t__ STATE_RX_IDLE ; 
 int /*<<< orphan*/  STATE_TX_XMIT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ eRcvState ; 
 int /*<<< orphan*/  eSndState ; 
 void** pucSndBufferCur ; 
 void** ucRTUBuf ; 
 int FUNC2 (void**,int) ; 
 int usSndBufferCount ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

eMBErrorCode
FUNC4( UCHAR ucSlaveAddress, const UCHAR * pucFrame, USHORT usLength )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    USHORT          usCRC16;

    FUNC0(  );

    /* Check if the receiver is still in idle state. If not we where to
     * slow with processing the received frame and the master sent another
     * frame on the network. We have to abort sending the frame.
     */
    if( eRcvState == STATE_RX_IDLE )
    {
        /* First byte before the Modbus-PDU is the slave address. */
        pucSndBufferCur = ( UCHAR * ) pucFrame - 1;
        usSndBufferCount = 1;

        /* Now copy the Modbus-PDU into the Modbus-Serial-Line-PDU. */
        pucSndBufferCur[MB_SER_PDU_ADDR_OFF] = ucSlaveAddress;
        usSndBufferCount += usLength;

        /* Calculate CRC16 checksum for Modbus-Serial-Line-PDU. */
        usCRC16 = FUNC2( ( UCHAR * ) pucSndBufferCur, usSndBufferCount );
        ucRTUBuf[usSndBufferCount++] = ( UCHAR )( usCRC16 & 0xFF );
        ucRTUBuf[usSndBufferCount++] = ( UCHAR )( usCRC16 >> 8 );

        /* Activate the transmitter. */
        eSndState = STATE_TX_XMIT;
        FUNC3( FALSE, TRUE );
    }
    else
    {
        eStatus = MB_EIO;
    }
    FUNC1(  );
    return eStatus;
}