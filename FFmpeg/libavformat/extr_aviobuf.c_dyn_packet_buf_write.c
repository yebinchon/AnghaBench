
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;


 int AV_WB32 (unsigned char*,int) ;
 int dyn_buf_write (void*,unsigned char*,int) ;

__attribute__((used)) static int dyn_packet_buf_write(void *opaque, uint8_t *buf, int buf_size)
{
    unsigned char buf1[4];
    int ret;


    AV_WB32(buf1, buf_size);
    ret = dyn_buf_write(opaque, buf1, 4);
    if (ret < 0)
        return ret;


    return dyn_buf_write(opaque, buf, buf_size);
}
