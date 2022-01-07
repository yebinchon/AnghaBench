
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;
typedef int BOOL ;


 int EV_FRAME_SENT ;
 int FALSE ;
 scalar_t__ STATE_RX_IDLE ;


 int TRUE ;
 int assert (int) ;
 scalar_t__ eRcvState ;
 int eSndState ;
 int * pucSndBufferCur ;
 int usSndBufferCount ;
 int vMBPortTimersEnable () ;
 int xMBPortEventPost (int ) ;
 int xMBPortSerialPutByte (int ) ;

BOOL
xMBRTUTransmitFSM( void )
{
    BOOL xNeedPoll = FALSE;

    assert( eRcvState == STATE_RX_IDLE );

    switch ( eSndState )
    {


    case 129:
        break;

    case 128:

        if( usSndBufferCount != 0 )
        {
            xMBPortSerialPutByte( ( CHAR )*pucSndBufferCur );
            pucSndBufferCur++;
            usSndBufferCount--;
        }
        else
        {
            xMBPortEventPost( EV_FRAME_SENT );
            xNeedPoll = TRUE;
            eSndState = 129;
            vMBPortTimersEnable( );
        }
        break;
    }

    return xNeedPoll;
}
