
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xTimeOnEntering; int xOverflowCount; } ;
typedef TYPE_1__ TimeOut_t ;


 int configASSERT (TYPE_1__* const) ;
 int xNumOfOverflows ;
 int xTickCount ;

void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
 configASSERT( pxTimeOut );
 pxTimeOut->xOverflowCount = xNumOfOverflows;
 pxTimeOut->xTimeOnEntering = xTickCount;
}
