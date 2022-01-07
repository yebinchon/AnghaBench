
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_md5_update (int ,int *,int) ;
 int fwrite (int *,int,int,scalar_t__) ;
 int md5 ;
 scalar_t__ out ;
 int out_size ;

__attribute__((used)) static int io_write(void *opaque, uint8_t *buf, int size)
{
    out_size += size;
    av_md5_update(md5, buf, size);
    if (out)
        fwrite(buf, 1, size, out);
    return size;
}
