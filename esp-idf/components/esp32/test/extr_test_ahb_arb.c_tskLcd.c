
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DMALEN ;
 int fflush (int ) ;
 int finishDma () ;
 int lcdIfaceInit () ;
 int* malloc (int) ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int sendRecvBufDma (int*,int*,int) ;
 int stdout ;
 int vTaskDelay (int) ;

__attribute__((used)) static void tskLcd(void *pvParameters)
{
    uint16_t *sbuf = malloc(DMALEN * 2);
    uint16_t *rbuf = malloc(DMALEN * 2);
    uint16_t xorval = 0;
    int x;
    lcdIfaceInit();

    while (1) {
        for (x = 0; x < DMALEN; x++) {
            sbuf[x] = x ^ xorval;
        }
        for (x = 0; x < DMALEN; x++) {
            rbuf[x] = 0;
        }
        sendRecvBufDma(sbuf, rbuf, DMALEN);
        vTaskDelay(20 / portTICK_PERIOD_MS);
        finishDma();
        for (x = 0; x < DMALEN; x++) if (rbuf[x] != (x ^ xorval)) {
                printf("Rxbuf err! pos %d val %x xor %x", x, (int)rbuf[x], (int)xorval);
            }
        printf(".");
        fflush(stdout);
        xorval++;
    }
}
