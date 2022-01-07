
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ USHORT ;


 int ESP_LOGD (int ,char*,int ) ;
 size_t MB_SERIAL_BUF_SIZE ;
 int TAG ;
 scalar_t__ bRxStateEnabled ;
 int portMAX_DELAY ;
 int pxMBFrameCBByteReceived () ;
 int pxMBPortCBTimerExpired () ;
 int uart_flush_input (int ) ;
 scalar_t__ uart_read_bytes (int ,int *,size_t,int ) ;
 int * ucBuffer ;
 int ucUartNumber ;
 size_t uiRxBufferPos ;

__attribute__((used)) static void vMBPortSerialRxPoll(size_t xEventSize)
{
    USHORT usLength;

    if (bRxStateEnabled) {
        if (xEventSize > 0) {
            xEventSize = (xEventSize > MB_SERIAL_BUF_SIZE) ? MB_SERIAL_BUF_SIZE : xEventSize;
            uiRxBufferPos = ((uiRxBufferPos + xEventSize) >= MB_SERIAL_BUF_SIZE) ? 0 : uiRxBufferPos;

            usLength = uart_read_bytes(ucUartNumber, &ucBuffer[uiRxBufferPos], xEventSize, portMAX_DELAY);
            for(USHORT usCnt = 0; usCnt < usLength; usCnt++ ) {

                ( void )pxMBFrameCBByteReceived();
            }

            uart_flush_input(ucUartNumber);



            (void)pxMBPortCBTimerExpired();

            ESP_LOGD(TAG, "Receive: %d(bytes in buffer)\n", (uint32_t)usLength);
        }
    }
}
