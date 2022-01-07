
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rmt_item32_t ;


 int DATA_ITEM_NUM ;
 int fill_item_bit_one (int *) ;
 int fill_item_bit_zero (int *) ;
 int fill_item_end (int *) ;
 int fill_item_header (int ) ;

__attribute__((used)) static int build_items(int channel, rmt_item32_t* item, int item_num, uint16_t addr, uint16_t cmd_data)
{
    int i = 0, j = 0;
    if(item_num < DATA_ITEM_NUM) {
        return -1;
    }
    fill_item_header(item++);
    i++;
    for(j = 0; j < 16; j++) {
        if(addr & 0x1) {
            fill_item_bit_one(item);
        } else {
            fill_item_bit_zero(item);
        }
        item++;
        i++;
        addr >>= 1;
    }
    for(j = 0; j < 16; j++) {
        if(cmd_data & 0x1) {
            fill_item_bit_one(item);
        } else {
            fill_item_bit_zero(item);
        }
        item++;
        i++;
        cmd_data >>= 1;
    }
    fill_item_end(item);
    i++;
    return i;
}
