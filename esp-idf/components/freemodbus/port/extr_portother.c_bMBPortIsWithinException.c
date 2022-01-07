
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int xPortInIsrContext () ;

BOOL
bMBPortIsWithinException( void )
{
    BOOL bIsWithinException = xPortInIsrContext();
    return bIsWithinException;
}
