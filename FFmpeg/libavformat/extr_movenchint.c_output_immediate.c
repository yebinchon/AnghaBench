
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_write (int *,int const*,int) ;

__attribute__((used)) static void output_immediate(const uint8_t *data, int size,
                             AVIOContext *out, int *entries)
{
    while (size > 0) {
        int len = size;
        if (len > 14)
            len = 14;
        avio_w8(out, 1);
        avio_w8(out, len);
        avio_write(out, data, len);
        data += len;
        size -= len;

        for (; len < 14; len++)
            avio_w8(out, 0);

        (*entries)++;
    }
}
