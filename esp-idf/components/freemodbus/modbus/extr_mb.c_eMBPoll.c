
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int eMBException ;
typedef int eMBEventType ;
typedef int eMBErrorCode ;
typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_2__ {int ucFunctionCode; int (* pxHandler ) (int*,int *) ;} ;






 int MB_ADDRESS_BROADCAST ;
 int MB_ASCII ;
 int MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS ;
 int MB_EILLSTATE ;
 int MB_ENOERR ;
 int MB_EX_ILLEGAL_FUNCTION ;
 int MB_EX_NONE ;
 int MB_FUNC_ERROR ;
 int MB_FUNC_HANDLERS_MAX ;
 size_t MB_PDU_FUNC_OFF ;
 scalar_t__ STATE_ENABLED ;
 scalar_t__ TRUE ;
 int eMBCurrentMode ;
 scalar_t__ eMBState ;
 int peMBFrameReceiveCur (int*,int**,int *) ;
 int peMBFrameSendCur (int,int*,int ) ;
 int stub1 (int*,int *) ;
 int ucMBAddress ;
 int vMBPortTimersDelay (int ) ;
 TYPE_1__* xFuncHandlers ;
 scalar_t__ xMBPortEventGet (int*) ;
 int xMBPortEventPost (int) ;

eMBErrorCode
eMBPoll( void )
{
    static UCHAR *ucMBFrame;
    static UCHAR ucRcvAddress;
    static UCHAR ucFunctionCode;
    static USHORT usLength;
    static eMBException eException;

    int i;
    eMBErrorCode eStatus = MB_ENOERR;
    eMBEventType eEvent;


    if( eMBState != STATE_ENABLED )
    {
        return MB_EILLSTATE;
    }



    if( xMBPortEventGet( &eEvent ) == TRUE )
    {
        switch ( eEvent )
        {
        case 128:
            break;

        case 130:
            eStatus = peMBFrameReceiveCur( &ucRcvAddress, &ucMBFrame, &usLength );
            if( eStatus == MB_ENOERR )
            {

                if( ( ucRcvAddress == ucMBAddress ) || ( ucRcvAddress == MB_ADDRESS_BROADCAST ) )
                {
                    ( void )xMBPortEventPost( 131 );
                }
            }
            break;

        case 131:
            ucFunctionCode = ucMBFrame[MB_PDU_FUNC_OFF];
            eException = MB_EX_ILLEGAL_FUNCTION;
            for( i = 0; i < MB_FUNC_HANDLERS_MAX; i++ )
            {

                if( xFuncHandlers[i].ucFunctionCode == 0 )
                {
                    break;
                }
                else if( xFuncHandlers[i].ucFunctionCode == ucFunctionCode )
                {
                    eException = xFuncHandlers[i].pxHandler( ucMBFrame, &usLength );
                    break;
                }
            }



            if( ucRcvAddress != MB_ADDRESS_BROADCAST )
            {
                if( eException != MB_EX_NONE )
                {

                    usLength = 0;
                    ucMBFrame[usLength++] = ( UCHAR )( ucFunctionCode | MB_FUNC_ERROR );
                    ucMBFrame[usLength++] = eException;
                }
                if( ( eMBCurrentMode == MB_ASCII ) && MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS )
                {
                    vMBPortTimersDelay( MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS );
                }
                eStatus = peMBFrameSendCur( ucMBAddress, ucMBFrame, usLength );
            }
            break;

        case 129:
            break;
        }
    }
    return MB_ENOERR;
}
