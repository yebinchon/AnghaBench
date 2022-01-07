
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int MB_SER_PDU_SIZE_MAX ;




 scalar_t__ STATE_TX_IDLE ;
 int assert (int) ;
 int eRcvState ;
 scalar_t__ eSndState ;
 int * ucRTUBuf ;
 int usRcvBufferPos ;
 int vMBPortTimersEnable () ;
 int xMBPortSerialGetByte (int *) ;

BOOL
xMBRTUReceiveFSM( void )
{
    BOOL xTaskNeedSwitch = FALSE;
    UCHAR ucByte;

    assert( eSndState == STATE_TX_IDLE );


    ( void )xMBPortSerialGetByte( ( CHAR * ) & ucByte );

    switch ( eRcvState )
    {



    case 129:
        vMBPortTimersEnable( );
        break;




    case 131:
        vMBPortTimersEnable( );
        break;





    case 130:
        usRcvBufferPos = 0;
        ucRTUBuf[usRcvBufferPos++] = ucByte;
        eRcvState = 128;


        vMBPortTimersEnable( );
        break;






    case 128:
        if( usRcvBufferPos < MB_SER_PDU_SIZE_MAX )
        {
            ucRTUBuf[usRcvBufferPos++] = ucByte;
        }
        else
        {
            eRcvState = 131;
        }
        vMBPortTimersEnable( );
        break;
    }
    return xTaskNeedSwitch;
}
