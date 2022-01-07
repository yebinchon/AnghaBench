
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void fill_buf(uint8_t *data, int w, int h, int linesize, uint8_t v)
{
    int y;

    for (y = 0; y < h; y++) {
        memset(data, v, w);
        data += linesize;
    }
}
