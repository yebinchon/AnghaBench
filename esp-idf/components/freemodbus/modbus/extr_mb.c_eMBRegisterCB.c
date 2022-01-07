
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * pxMBFunctionHandler ;
typedef int eMBErrorCode ;
typedef int UCHAR ;
struct TYPE_2__ {int ucFunctionCode; int * pxHandler; } ;


 int ENTER_CRITICAL_SECTION () ;
 int EXIT_CRITICAL_SECTION () ;
 int MB_EINVAL ;
 int MB_ENOERR ;
 int MB_ENORES ;
 int MB_FUNC_HANDLERS_MAX ;
 TYPE_1__* xFuncHandlers ;

eMBErrorCode
eMBRegisterCB( UCHAR ucFunctionCode, pxMBFunctionHandler pxHandler )
{
    int i;
    eMBErrorCode eStatus;

    if( ( 0 < ucFunctionCode ) && ( ucFunctionCode <= 127 ) )
    {
        ENTER_CRITICAL_SECTION( );
        if( pxHandler != ((void*)0) )
        {
            for( i = 0; i < MB_FUNC_HANDLERS_MAX; i++ )
            {
                if( ( xFuncHandlers[i].pxHandler == ((void*)0) ) ||
                    ( xFuncHandlers[i].pxHandler == pxHandler ) )
                {
                    xFuncHandlers[i].ucFunctionCode = ucFunctionCode;
                    xFuncHandlers[i].pxHandler = pxHandler;
                    break;
                }
            }
            eStatus = ( i != MB_FUNC_HANDLERS_MAX ) ? MB_ENOERR : MB_ENORES;
        }
        else
        {
            for( i = 0; i < MB_FUNC_HANDLERS_MAX; i++ )
            {
                if( xFuncHandlers[i].ucFunctionCode == ucFunctionCode )
                {
                    xFuncHandlers[i].ucFunctionCode = 0;
                    xFuncHandlers[i].pxHandler = ((void*)0);
                    break;
                }
            }

            eStatus = MB_ENOERR;
        }
        EXIT_CRITICAL_SECTION( );
    }
    else
    {
        eStatus = MB_EINVAL;
    }
    return eStatus;
}
