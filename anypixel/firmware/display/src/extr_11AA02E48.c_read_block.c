
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int PIN_HIGH ;
 int PIN_LOW ;
 int T_HDR_LOW ;
 int T_STBY ;
 int UNIO_READ ;
 int UNIO_START ;
 int recv_byte (int *,int) ;
 int send_byte (int,int) ;
 int usleep (int ) ;

__attribute__((used)) static bool read_block(uint8_t *buf, uint16_t addr, uint16_t len) {
    int i;
    bool retval = 1;

    PIN_HIGH;
    usleep(T_STBY);
    PIN_LOW;
    usleep(T_HDR_LOW);
    send_byte(UNIO_START, 1);

    retval &= send_byte(0xA0, 1);
    retval &= send_byte(UNIO_READ, 1);
    retval &= send_byte(addr >> 8, 1);
    retval &= send_byte(addr & 0xFF, 1);

    for(i = 0; i < len; i++) {
        retval &= recv_byte( buf+i, i != (len-1) );
    }
    return retval;
}
