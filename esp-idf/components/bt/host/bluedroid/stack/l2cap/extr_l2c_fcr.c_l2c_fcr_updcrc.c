
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* crctab ;

__attribute__((used)) static unsigned short l2c_fcr_updcrc(unsigned short icrc, unsigned char *icp, int icnt)
{
    register unsigned short crc = icrc;
    register unsigned char *cp = icp;
    register int cnt = icnt;

    while (cnt--) {
        crc = ((crc >> 8) & 0xff) ^ crctab[(crc & 0xff) ^ *cp++];
    }

    return (crc);
}
