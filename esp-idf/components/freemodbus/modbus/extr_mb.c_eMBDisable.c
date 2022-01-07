
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBErrorCode ;


 int MB_EILLSTATE ;
 int MB_ENOERR ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_ENABLED ;
 scalar_t__ eMBState ;
 int pvMBFrameStopCur () ;

eMBErrorCode
eMBDisable( void )
{
    eMBErrorCode eStatus;

    if( eMBState == STATE_ENABLED )
    {
        pvMBFrameStopCur( );
        eMBState = STATE_DISABLED;
        eStatus = MB_ENOERR;
    }
    else if( eMBState == STATE_DISABLED )
    {
        eStatus = MB_ENOERR;
    }
    else
    {
        eStatus = MB_EILLSTATE;
    }
    return eStatus;
}
