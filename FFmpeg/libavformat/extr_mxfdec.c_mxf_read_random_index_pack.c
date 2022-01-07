
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_15__ {TYPE_6__* pb; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int next_klv; int length; int key; } ;
struct TYPE_13__ {int run_in; int footer_partition; } ;
typedef TYPE_1__ MXFContext ;
typedef TYPE_2__ KLVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_WARNING ;
 int FFMIN (int,int ) ;
 int INT_MAX ;
 int IS_KLV_KEY (int ,int ) ;
 int SEEK_SET ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_rb32 (TYPE_6__*) ;
 int avio_rb64 (TYPE_6__*) ;
 int avio_seek (TYPE_6__*,int,int ) ;
 int avio_size (TYPE_6__*) ;
 int avio_skip (TYPE_6__*,int) ;
 scalar_t__ klv_read_packet (TYPE_2__*,TYPE_6__*) ;
 int mxf_random_index_pack_key ;

__attribute__((used)) static void mxf_read_random_index_pack(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    uint32_t length;
    int64_t file_size, max_rip_length, min_rip_length;
    KLVPacket klv;

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL))
        return;

    file_size = avio_size(s->pb);
    max_rip_length = ((file_size - mxf->run_in) / 105) * 12 + 28;
    max_rip_length = FFMIN(max_rip_length, INT_MAX);


    min_rip_length = 16+1+24+4;


    avio_seek(s->pb, file_size - 4, SEEK_SET);
    length = avio_rb32(s->pb);

    if (length < min_rip_length || length > max_rip_length)
        goto end;
    avio_seek(s->pb, file_size - length, SEEK_SET);
    if (klv_read_packet(&klv, s->pb) < 0 ||
        !IS_KLV_KEY(klv.key, mxf_random_index_pack_key))
        goto end;
    if (klv.next_klv != file_size || klv.length <= 4 || (klv.length - 4) % 12) {
        av_log(s, AV_LOG_WARNING, "Invalid RIP KLV length\n");
        goto end;
    }

    avio_skip(s->pb, klv.length - 12);
    mxf->footer_partition = avio_rb64(s->pb);


    if (mxf->run_in + mxf->footer_partition >= file_size) {
        av_log(s, AV_LOG_WARNING, "bad FooterPartition in RIP - ignoring\n");
        mxf->footer_partition = 0;
    }

end:
    avio_seek(s->pb, mxf->run_in, SEEK_SET);
}
