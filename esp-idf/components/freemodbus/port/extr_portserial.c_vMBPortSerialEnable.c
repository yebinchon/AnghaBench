
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 void* FALSE ;
 void* TRUE ;
 void* bRxStateEnabled ;
 void* bTxStateEnabled ;
 int vTaskResume (int ) ;
 int vTaskSuspend (int ) ;
 int xMbTaskHandle ;

void vMBPortSerialEnable(BOOL bRxEnable, BOOL bTxEnable)
{

    if (bRxEnable) {

        bRxStateEnabled = TRUE;
        vTaskResume(xMbTaskHandle);
    } else {
        vTaskSuspend(xMbTaskHandle);
        bRxStateEnabled = FALSE;
    }
    if (bTxEnable) {
        bTxStateEnabled = TRUE;
    } else {
        bTxStateEnabled = FALSE;
    }
}
