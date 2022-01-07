
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
struct TYPE_8__ {scalar_t__ chroma_location; scalar_t__ field_order; int codec_id; int format; } ;
struct TYPE_7__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_6__ {TYPE_3__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef int AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 int AVCHROMA_LOC_CENTER ;
 int AVCHROMA_LOC_LEFT ;
 int AVCHROMA_LOC_TOPLEFT ;
 scalar_t__ AVCHROMA_LOC_UNSPECIFIED ;



 scalar_t__ AV_FIELD_PROGRESSIVE ;
 scalar_t__ AV_FIELD_UNKNOWN ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

enum AVChromaLocation ff_choose_chroma_location(AVFormatContext *s, AVStream *st)
{
    AVCodecParameters *par = st->codecpar;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(par->format);

    if (par->chroma_location != AVCHROMA_LOC_UNSPECIFIED)
        return par->chroma_location;

    if (pix_desc) {
        if (pix_desc->log2_chroma_h == 0) {
            return AVCHROMA_LOC_TOPLEFT;
        } else if (pix_desc->log2_chroma_w == 1 && pix_desc->log2_chroma_h == 1) {
            if (par->field_order == AV_FIELD_UNKNOWN || par->field_order == AV_FIELD_PROGRESSIVE) {
                switch (par->codec_id) {
                case 130:
                case 129: return AVCHROMA_LOC_CENTER;
                }
            }
            if (par->field_order == AV_FIELD_UNKNOWN || par->field_order != AV_FIELD_PROGRESSIVE) {
                switch (par->codec_id) {
                case 128: return AVCHROMA_LOC_LEFT;
                }
            }
        }
    }

    return AVCHROMA_LOC_UNSPECIFIED;

}
