
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,unsigned int) ;
 int ffio_fill (int *,int ,unsigned int) ;

__attribute__((used)) static int flac_write_block_padding(AVIOContext *pb, unsigned int n_padding_bytes,
                                    int last_block)
{
    avio_w8(pb, last_block ? 0x81 : 0x01);
    avio_wb24(pb, n_padding_bytes);
    ffio_fill(pb, 0, n_padding_bytes);
    return 0;
}
