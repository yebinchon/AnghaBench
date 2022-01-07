
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int length; int* tx_data; scalar_t__ flags; int * tx_buffer; void* user; } ;
typedef TYPE_1__ spi_transaction_t ;
typedef int spi_device_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int PARALLEL_LINES ;
 scalar_t__ SPI_TRANS_USE_TXDATA ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int portMAX_DELAY ;
 scalar_t__ spi_device_queue_trans (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void send_lines(spi_device_handle_t spi, int ypos, uint16_t *linedata)
{
    esp_err_t ret;
    int x;


    static spi_transaction_t trans[6];



    for (x=0; x<6; x++) {
        memset(&trans[x], 0, sizeof(spi_transaction_t));
        if ((x&1)==0) {

            trans[x].length=8;
            trans[x].user=(void*)0;
        } else {

            trans[x].length=8*4;
            trans[x].user=(void*)1;
        }
        trans[x].flags=SPI_TRANS_USE_TXDATA;
    }
    trans[0].tx_data[0]=0x2A;
    trans[1].tx_data[0]=0;
    trans[1].tx_data[1]=0;
    trans[1].tx_data[2]=(320)>>8;
    trans[1].tx_data[3]=(320)&0xff;
    trans[2].tx_data[0]=0x2B;
    trans[3].tx_data[0]=ypos>>8;
    trans[3].tx_data[1]=ypos&0xff;
    trans[3].tx_data[2]=(ypos+PARALLEL_LINES)>>8;
    trans[3].tx_data[3]=(ypos+PARALLEL_LINES)&0xff;
    trans[4].tx_data[0]=0x2C;
    trans[5].tx_buffer=linedata;
    trans[5].length=320*2*8*PARALLEL_LINES;
    trans[5].flags=0;


    for (x=0; x<6; x++) {
        ret=spi_device_queue_trans(spi, &trans[x], portMAX_DELAY);
        assert(ret==ESP_OK);
    }





}
