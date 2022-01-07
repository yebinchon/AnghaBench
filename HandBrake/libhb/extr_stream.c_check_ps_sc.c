
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int check_ps_sc(const uint8_t *buf)
{



    int pos;
    int mark = buf[4] >> 4;
    if ( mark == 0x02 )
    {


        if( ( buf[4] & 0xf1 ) != 0x21 ||
            ( buf[6] & 0x01 ) != 0x01 ||
            ( buf[8] & 0x01 ) != 0x01 ||
            ( buf[9] & 0x80 ) != 0x80 ||
            ( buf[11] & 0x01 ) != 0x01 )
        {
            return 0;
        }

        pos = 12;
    }
    else
    {


        if( ( buf[4] & 0xC4 ) != 0x44 ||
            ( buf[6] & 0x04 ) != 0x04 ||
            ( buf[8] & 0x04 ) != 0x04 ||
            ( buf[9] & 0x01 ) != 0x01 ||
            ( buf[12] & 0x03 ) != 0x03 )
        {
            return 0;
        }

        pos = 14 + ( buf[13] & 0x7 );
    }
    return (buf[pos+0] == 0x00) && (buf[pos+1] == 0x00) && (buf[pos+2] == 0x01);
}
