
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ esp_err_t ;
typedef int USHORT ;
typedef scalar_t__ BOOL ;


 int ESP_LOGD (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 scalar_t__ FALSE ;
 int MB_PORT_CHECK (int,scalar_t__,char*) ;
 scalar_t__ MB_SERIAL_BUF_SIZE ;
 int MB_SERIAL_TX_TOUT_TICKS ;
 int TAG ;
 scalar_t__ TRUE ;
 scalar_t__ bTxStateEnabled ;
 scalar_t__ pxMBMasterFrameCBTransmitterEmpty () ;
 scalar_t__ uart_wait_tx_done (int ,int ) ;
 int ucUartNumber ;
 int vMBMasterPortSerialEnable (scalar_t__,scalar_t__) ;

BOOL xMBMasterPortSerialTxPoll(void)
{
    USHORT usCount = 0;
    BOOL bNeedPoll = FALSE;

    if( bTxStateEnabled ) {

        while((bNeedPoll == FALSE) && (usCount++ < MB_SERIAL_BUF_SIZE)) {

            bNeedPoll = pxMBMasterFrameCBTransmitterEmpty( );
        }
        ESP_LOGD(TAG, "MB_TX_buffer sent: (%d) bytes.", (uint16_t)(usCount - 1));

        esp_err_t xTxStatus = uart_wait_tx_done(ucUartNumber, MB_SERIAL_TX_TOUT_TICKS);
        bTxStateEnabled = FALSE;
        vMBMasterPortSerialEnable( TRUE, FALSE );
        MB_PORT_CHECK((xTxStatus == ESP_OK), FALSE, "mb serial sent buffer failure.");
        return TRUE;
    }
    return FALSE;
}
