
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int chunk ;
struct TYPE_3__ {int aes_ctr; } ;
typedef TYPE_1__ MOVMuxCencContext ;
typedef int AVIOContext ;


 int FFMIN (int,int) ;
 int av_aes_ctr_crypt (int ,int *,int const*,int) ;
 int avio_write (int *,int *,int) ;

__attribute__((used)) static void mov_cenc_write_encrypted(MOVMuxCencContext* ctx, AVIOContext *pb,
                                     const uint8_t *buf_in, int size)
{
    uint8_t chunk[4096];
    const uint8_t* cur_pos = buf_in;
    int size_left = size;
    int cur_size;

    while (size_left > 0) {
        cur_size = FFMIN(size_left, sizeof(chunk));
        av_aes_ctr_crypt(ctx->aes_ctr, chunk, cur_pos, cur_size);
        avio_write(pb, chunk, cur_size);
        cur_pos += cur_size;
        size_left -= cur_size;
    }
}
