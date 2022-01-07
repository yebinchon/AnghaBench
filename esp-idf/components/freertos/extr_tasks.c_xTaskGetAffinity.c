
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TaskHandle_t ;
struct TYPE_3__ {int xCoreID; } ;
typedef TYPE_1__ TCB_t ;
typedef int BaseType_t ;


 TYPE_1__* prvGetTCBFromHandle (int ) ;

BaseType_t xTaskGetAffinity( TaskHandle_t xTask )
{
 TCB_t *pxTCB;

 pxTCB = prvGetTCBFromHandle( xTask );

 return pxTCB->xCoreID;
}
