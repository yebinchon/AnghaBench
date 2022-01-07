
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buf ;
struct TYPE_3__ {int vos_len; scalar_t__ vos_data; } ;
typedef int PutBitContext ;
typedef TYPE_1__ MOVTrack ;
typedef int GetBitContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int flush_put_bits (int *) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int init_get_bits (int *,scalar_t__,int) ;
 int init_put_bits (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int mov_write_ac3_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    GetBitContext gbc;
    PutBitContext pbc;
    uint8_t buf[3];
    int fscod, bsid, bsmod, acmod, lfeon, frmsizecod;

    if (track->vos_len < 7) {
        av_log(s, AV_LOG_ERROR,
               "Cannot write moov atom before AC3 packets."
               " Set the delay_moov flag to fix this.\n");
        return AVERROR(EINVAL);
    }

    avio_wb32(pb, 11);
    ffio_wfourcc(pb, "dac3");

    init_get_bits(&gbc, track->vos_data + 4, (track->vos_len - 4) * 8);
    fscod = get_bits(&gbc, 2);
    frmsizecod = get_bits(&gbc, 6);
    bsid = get_bits(&gbc, 5);
    bsmod = get_bits(&gbc, 3);
    acmod = get_bits(&gbc, 3);
    if (acmod == 2) {
        skip_bits(&gbc, 2);
    } else {
        if ((acmod & 1) && acmod != 1)
            skip_bits(&gbc, 2);
        if (acmod & 4)
            skip_bits(&gbc, 2);
    }
    lfeon = get_bits1(&gbc);

    init_put_bits(&pbc, buf, sizeof(buf));
    put_bits(&pbc, 2, fscod);
    put_bits(&pbc, 5, bsid);
    put_bits(&pbc, 3, bsmod);
    put_bits(&pbc, 3, acmod);
    put_bits(&pbc, 1, lfeon);
    put_bits(&pbc, 5, frmsizecod >> 1);
    put_bits(&pbc, 5, 0);

    flush_put_bits(&pbc);
    avio_write(pb, buf, sizeof(buf));

    return 11;
}
