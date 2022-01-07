
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rmt_item32_t ;


 int DATA_ITEM_NUM ;
 scalar_t__ bit_one_if (int *) ;
 scalar_t__ bit_zero_if (int *) ;
 int header_if (int ) ;

__attribute__((used)) static int parse_items(rmt_item32_t* item, int item_num, uint16_t* addr, uint16_t* data)
{
    int w_len = item_num;
    if(w_len < DATA_ITEM_NUM) {
        return -1;
    }
    int i = 0, j = 0;
    if(!header_if(item++)) {
        return -1;
    }
    uint16_t addr_t = 0;
    for(j = 0; j < 16; j++) {
        if(bit_one_if(item)) {
            addr_t |= (1 << j);
        } else if(bit_zero_if(item)) {
            addr_t |= (0 << j);
        } else {
            return -1;
        }
        item++;
        i++;
    }
    uint16_t data_t = 0;
    for(j = 0; j < 16; j++) {
        if(bit_one_if(item)) {
            data_t |= (1 << j);
        } else if(bit_zero_if(item)) {
            data_t |= (0 << j);
        } else {
            return -1;
        }
        item++;
        i++;
    }
    *addr = addr_t;
    *data = data_t;
    return i;
}
