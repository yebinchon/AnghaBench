
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int codec_id; int extradata_size; int extradata; int codec_tag; } ;
typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR_INVALIDDATA ;






 int AV_CODEC_ID_PRORES ;

 int AV_CODEC_ID_TTA ;


 int AV_LOG_ERROR ;
 int MAX_PCE_SIZE ;
 int av_log (int *,int ,char*) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int ,int) ;
 int ff_codec_get_id (int ,int ) ;
 int ff_codec_movvideo_tags ;
 int ff_isom_write_av1c (int *,int ,int) ;
 int ff_isom_write_avcc (int *,int ,int) ;
 int ff_isom_write_hvcc (int *,int ,int,int ) ;
 int put_ebml_void (int *,int) ;
 int put_flac_codecpriv (int *,int *,TYPE_1__*) ;
 int put_wv_codecpriv (int *,TYPE_1__*) ;
 int put_xiph_codecpriv (int *,int *,TYPE_1__*) ;

__attribute__((used)) static int mkv_write_native_codecprivate(AVFormatContext *s, AVIOContext *pb,
                                         AVCodecParameters *par,
                                         AVIOContext *dyn_cp)
{
    switch (par->codec_id) {
    case 129:
    case 130:
        return put_xiph_codecpriv(s, dyn_cp, par);
    case 133:
        return put_flac_codecpriv(s, dyn_cp, par);
    case 128:
        return put_wv_codecpriv(dyn_cp, par);
    case 132:
        return ff_isom_write_avcc(dyn_cp, par->extradata,
                                  par->extradata_size);
    case 131:
        ff_isom_write_hvcc(dyn_cp, par->extradata,
                           par->extradata_size, 0);
        return 0;
    case 134:
        if (par->extradata_size)
            return ff_isom_write_av1c(dyn_cp, par->extradata,
                                      par->extradata_size);
        else
            put_ebml_void(pb, 4 + 3);
        break;
    case 135:
        if (par->extradata_size < 36) {
            av_log(s, AV_LOG_ERROR,
                   "Invalid extradata found, ALAC expects a 36-byte "
                   "QuickTime atom.");
            return AVERROR_INVALIDDATA;
        } else
            avio_write(dyn_cp, par->extradata + 12,
                       par->extradata_size - 12);
        break;
    case 136:
        if (par->extradata_size)
            avio_write(dyn_cp, par->extradata, par->extradata_size);
        else
            put_ebml_void(pb, MAX_PCE_SIZE + 2 + 4);
        break;
    default:
        if (par->codec_id == AV_CODEC_ID_PRORES &&
            ff_codec_get_id(ff_codec_movvideo_tags, par->codec_tag) == AV_CODEC_ID_PRORES) {
            avio_wl32(dyn_cp, par->codec_tag);
        } else if (par->extradata_size && par->codec_id != AV_CODEC_ID_TTA)
            avio_write(dyn_cp, par->extradata, par->extradata_size);
    }

    return 0;
}
