
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* m_CRC16Table ;

unsigned short CRC16(const char* data, int length)
{
    unsigned short crc = 0;
    for (int i = 0; i < length; i++) {
        crc = (crc << 8) ^ m_CRC16Table[((crc >> 8) ^ data[i]) & 0x00FF];
    }
    return crc;
}
