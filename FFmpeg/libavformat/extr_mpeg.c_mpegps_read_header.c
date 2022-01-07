
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef int buffer ;
struct TYPE_5__ {int pb; int ctx_flags; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int header_state; int imkh_cctv; int sofdec; } ;
typedef TYPE_1__ MpegDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int SEEK_SET ;
 int avio_get_str (int ,int,char*,int) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static int mpegps_read_header(AVFormatContext *s)
{
    MpegDemuxContext *m = s->priv_data;
    char buffer[7] = { 0 };
    int64_t last_pos = avio_tell(s->pb);

    m->header_state = 0xff;
    s->ctx_flags |= AVFMTCTX_NOHEADER;

    avio_get_str(s->pb, 6, buffer, sizeof(buffer));
    if (!memcmp("IMKH", buffer, 4)) {
        m->imkh_cctv = 1;
    } else if (!memcmp("Sofdec", buffer, 6)) {
        m->sofdec = 1;
    } else
       avio_seek(s->pb, last_pos, SEEK_SET);


    return 0;
}
