
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* m_CRC7Table ;

char CRC7(const char* data, int length)
{
    char crc = 0;
    for (int i = 0; i < length; i++) {
        crc = m_CRC7Table[(crc << 1) ^ data[i]];
    }
    return crc;
}
