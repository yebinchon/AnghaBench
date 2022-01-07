
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int avio_read (int *,unsigned char*,int) ;

int ffio_read_size(AVIOContext *s, unsigned char *buf, int size)
{
    int ret = avio_read(s, buf, size);
    if (ret != size)
        return AVERROR_INVALIDDATA;
    return ret;
}
