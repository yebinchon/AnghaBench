
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;
typedef int AVCRC ;
 int av_crc (int const*,int ,int*,int) ;
 int * av_crc_get_table (unsigned int const) ;
 int printf (char*,unsigned int const,int) ;

int main(void)
{
    uint8_t buf[1999];
    int i;
    static const unsigned p[7][3] = {
        { 130, 0xEDB88320, 0x3D5CDD04 },
        { 131 , 0x04C11DB7, 0xC0F5BAE0 },
        { 132 , 0x864CFB , 0xB704CE },
        { 133, 0xA001 , 0xBFD8 },
        { 134 , 0x8005 , 0x1FBB },
        { 129 , 0x07 , 0xE3 },
        { 128 , 0x1D , 0xD6 },
    };
    const AVCRC *ctx;

    for (i = 0; i < sizeof(buf); i++)
        buf[i] = i + i * i;

    for (i = 0; i < 7; i++) {
        ctx = av_crc_get_table(p[i][0]);
        printf("crc %08X = %X\n", p[i][1], av_crc(ctx, 0, buf, sizeof(buf)));
    }
    return 0;
}
