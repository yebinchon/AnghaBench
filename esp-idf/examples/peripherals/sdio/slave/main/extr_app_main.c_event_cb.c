
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ESP_EARLY_LOGD (int ,char*,int) ;
 int JOB_IDLE ;
 int TAG ;
 int s_job ;
 int sdio_slave_read_reg (int ) ;
 int sdio_slave_write_reg (int ,int ) ;

__attribute__((used)) static void event_cb(uint8_t pos)
{
    ESP_EARLY_LOGD(TAG, "event: %d", pos);
    switch(pos) {
        case 0:
            s_job = sdio_slave_read_reg(0);
            sdio_slave_write_reg(0, JOB_IDLE);
            break;
    }
}
