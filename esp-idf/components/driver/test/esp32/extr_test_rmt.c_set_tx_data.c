
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rmt_item32_t ;


 int build_items (int,int *,int,int,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void set_tx_data(int tx_channel, uint16_t cmd, uint16_t addr, int item_num, rmt_item32_t* item, int offset)
{
    while(1) {
        int i = build_items(tx_channel, item + offset, item_num - offset, ((~addr) << 8) | addr, cmd);
        printf("cmd :%d\n", cmd);
        if(i < 0) {
            break;
        }
        cmd++;
        addr++;
        offset += i;
    }
}
