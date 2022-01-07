
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 unsigned int COM ;
 unsigned int SOF0 ;
 int ff_dlog (int *,char*,int) ;

__attribute__((used)) static int find_marker(const uint8_t **pbuf_ptr, const uint8_t *buf_end)
{
    const uint8_t *buf_ptr;
    unsigned int v, v2;
    int val;
    int skipped = 0;

    buf_ptr = *pbuf_ptr;
    while (buf_end - buf_ptr > 1) {
        v = *buf_ptr++;
        v2 = *buf_ptr;
        if ((v == 0xff) && (v2 >= SOF0) && (v2 <= COM) && buf_ptr < buf_end) {
            val = *buf_ptr++;
            goto found;
        }
        skipped++;
    }
    buf_ptr = buf_end;
    val = -1;
found:
    ff_dlog(((void*)0), "find_marker skipped %d bytes\n", skipped);
    *pbuf_ptr = buf_ptr;
    return val;
}
