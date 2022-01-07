
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_nav_pack( unsigned char *buf )
{
    if( ( buf[0x26] == 0x00 &&
          buf[0x27] == 0x00 &&
          buf[0x28] == 0x01 &&
          buf[0x29] == 0xbf &&
          buf[0x2c] == 0x00 ) &&
        ( buf[0x400] == 0x00 &&
          buf[0x401] == 0x00 &&
          buf[0x402] == 0x01 &&
          buf[0x403] == 0xbf &&
          buf[0x406] == 0x01 ) )
    {
        return ( 1 );
    } else {
        return ( 0 );
    }
}
