
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBErrorCode ;


 int MB_EILLSTATE ;
 int MB_ENOERR ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ eMBState ;
 int pvMBFrameCloseCur () ;

eMBErrorCode
eMBClose( void )
{
    eMBErrorCode eStatus = MB_ENOERR;

    if( eMBState == STATE_DISABLED )
    {
        if( pvMBFrameCloseCur != ((void*)0) )
        {
            pvMBFrameCloseCur( );
        }
    }
    else
    {
        eStatus = MB_EILLSTATE;
    }
    return eStatus;
}
