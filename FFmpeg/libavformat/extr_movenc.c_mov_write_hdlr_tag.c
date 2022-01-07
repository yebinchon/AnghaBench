
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_17__ {char* value; } ;
struct TYPE_16__ {TYPE_4__* priv_data; } ;
struct TYPE_15__ {scalar_t__ empty_hdlr_name; } ;
struct TYPE_14__ {scalar_t__ mode; scalar_t__ tag; TYPE_2__* st; TYPE_1__* par; } ;
struct TYPE_13__ {int metadata; } ;
struct TYPE_12__ {scalar_t__ codec_type; scalar_t__ codec_tag; } ;
typedef TYPE_3__ MOVTrack ;
typedef TYPE_4__ MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVDictionaryEntry ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_WARNING ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ MODE_MOV ;
 TYPE_6__* av_dict_get (int ,char*,int *,int ) ;
 int av_fourcc2str (scalar_t__) ;
 int av_log (TYPE_5__*,int ,char*,int ) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,char const*,int) ;
 int ffio_wfourcc (int *,char const*) ;
 scalar_t__ is_clcp_track (TYPE_3__*) ;
 int strlen (char const*) ;
 int update_size (int *,int ) ;
 scalar_t__ utf8len (char*) ;

__attribute__((used)) static int mov_write_hdlr_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    MOVMuxContext *mov = s->priv_data;
    const char *hdlr, *descr = ((void*)0), *hdlr_type = ((void*)0);
    int64_t pos = avio_tell(pb);

    hdlr = "dhlr";
    hdlr_type = "url ";
    descr = "DataHandler";

    if (track) {
        hdlr = (track->mode == MODE_MOV) ? "mhlr" : "\0\0\0\0";
        if (track->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            hdlr_type = "vide";
            descr = "VideoHandler";
        } else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO) {
            hdlr_type = "soun";
            descr = "SoundHandler";
        } else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE) {
            if (is_clcp_track(track)) {
                hdlr_type = "clcp";
                descr = "ClosedCaptionHandler";
            } else {
                if (track->tag == MKTAG('t','x','3','g')) {
                    hdlr_type = "sbtl";
                } else if (track->tag == MKTAG('m','p','4','s')) {
                    hdlr_type = "subp";
                } else {
                    hdlr_type = "text";
                }
            descr = "SubtitleHandler";
            }
        } else if (track->par->codec_tag == MKTAG('r','t','p',' ')) {
            hdlr_type = "hint";
            descr = "HintHandler";
        } else if (track->par->codec_tag == MKTAG('t','m','c','d')) {
            hdlr_type = "tmcd";
            descr = "TimeCodeHandler";
        } else if (track->par->codec_tag == MKTAG('g','p','m','d')) {
            hdlr_type = "meta";
            descr = "GoPro MET";
        } else {
            av_log(s, AV_LOG_WARNING,
                   "Unknown hldr_type for %s, writing dummy values\n",
                   av_fourcc2str(track->par->codec_tag));
        }
        if (track->st) {



            AVDictionaryEntry *t;
            t = av_dict_get(track->st->metadata, "handler_name", ((void*)0), 0);
            if (t && utf8len(t->value))
                descr = t->value;
        }
    }

    if (mov->empty_hdlr_name)
        descr = "";

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "hdlr");
    avio_wb32(pb, 0);
    avio_write(pb, hdlr, 4);
    ffio_wfourcc(pb, hdlr_type);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    if (!track || track->mode == MODE_MOV)
        avio_w8(pb, strlen(descr));
    avio_write(pb, descr, strlen(descr));
    if (track && track->mode != MODE_MOV)
        avio_w8(pb, 0);
    return update_size(pb, pos);
}
