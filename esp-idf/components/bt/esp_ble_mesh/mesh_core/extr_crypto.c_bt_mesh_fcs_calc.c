
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;


 int BT_DBG (char*,int) ;
 size_t* crc_table ;

u8_t bt_mesh_fcs_calc(const u8_t *data, u8_t data_len)
{
    u8_t fcs = 0xff;

    while (data_len--) {
        fcs = crc_table[fcs ^ *data++];
    }

    BT_DBG("fcs 0x%02x", 0xff - fcs);

    return 0xff - fcs;
}
