
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SET_RAND_ADDR_CBACK ;
typedef int* BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTA_DmSetRandAddress (int*,int (*) (int )) ;
 int BTC_TRACE_ERROR (char*) ;
 int BTM_INVALID_STATIC_RAND_ADDR ;
 int BT_STATIC_RAND_ADDR_MASK ;
 int btc_set_rand_addr_callback (int ) ;
 scalar_t__ memcmp (int*,int*,int ) ;
 int memset (int*,int,int) ;

__attribute__((used)) static void btc_ble_set_rand_addr (BD_ADDR rand_addr, tBTA_SET_RAND_ADDR_CBACK *p_set_rand_addr_cback)
{
    if (rand_addr != ((void*)0)) {






        BD_ADDR invalid_rand_addr_a, invalid_rand_addr_b;
        memset(invalid_rand_addr_a, 0xff, sizeof(BD_ADDR));
        memset(invalid_rand_addr_b, 0x00, sizeof(BD_ADDR));
        invalid_rand_addr_b[0] = invalid_rand_addr_b[0] | BT_STATIC_RAND_ADDR_MASK;
        if((rand_addr[0] & BT_STATIC_RAND_ADDR_MASK) == BT_STATIC_RAND_ADDR_MASK
            && memcmp(invalid_rand_addr_a, rand_addr, BD_ADDR_LEN) != 0
            && memcmp(invalid_rand_addr_b, rand_addr, BD_ADDR_LEN) != 0){
            BTA_DmSetRandAddress(rand_addr, btc_set_rand_addr_callback);
        } else {
            btc_set_rand_addr_callback(BTM_INVALID_STATIC_RAND_ADDR);
            BTC_TRACE_ERROR("Invalid random address, the high bit should be 0b11, bits of the random part shall not be all 1 or 0");
        }
    } else {
        btc_set_rand_addr_callback(BTM_INVALID_STATIC_RAND_ADDR);
        BTC_TRACE_ERROR("Invalid random addressm, the address value is NULL");
    }
}
