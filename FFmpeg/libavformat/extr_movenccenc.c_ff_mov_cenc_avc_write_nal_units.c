
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MOVMuxCencContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int auxiliary_info_add_subsample (int *,int,int) ;
 int av_log (int *,int ,char*,int,int) ;
 int avio_write (int *,int const*,int) ;
 int mov_cenc_end_packet (int *) ;
 int mov_cenc_start_packet (int *) ;
 int mov_cenc_write_encrypted (int *,int *,int const*,int) ;

int ff_mov_cenc_avc_write_nal_units(AVFormatContext *s, MOVMuxCencContext* ctx,
    int nal_length_size, AVIOContext *pb, const uint8_t *buf_in, int size)
{
    int nalsize;
    int ret;
    int j;

    ret = mov_cenc_start_packet(ctx);
    if (ret) {
        return ret;
    }

    while (size > 0) {

        if (size < nal_length_size + 1) {
            av_log(s, AV_LOG_ERROR, "CENC-AVC: remaining size %d smaller than nal length+type %d\n",
                size, nal_length_size + 1);
            return -1;
        }

        avio_write(pb, buf_in, nal_length_size + 1);

        nalsize = 0;
        for (j = 0; j < nal_length_size; j++) {
            nalsize = (nalsize << 8) | *buf_in++;
        }
        size -= nal_length_size;


        if (nalsize <= 0 || nalsize > size) {
            av_log(s, AV_LOG_ERROR, "CENC-AVC: nal size %d remaining %d\n", nalsize, size);
            return -1;
        }

        mov_cenc_write_encrypted(ctx, pb, buf_in + 1, nalsize - 1);
        buf_in += nalsize;
        size -= nalsize;

        auxiliary_info_add_subsample(ctx, nal_length_size + 1, nalsize - 1);
    }

    ret = mov_cenc_end_packet(ctx);
    if (ret) {
        return ret;
    }

    return 0;
}
