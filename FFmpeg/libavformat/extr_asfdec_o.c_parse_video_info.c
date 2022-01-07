
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {unsigned int codec_tag; scalar_t__ extradata_size; scalar_t__ extradata; int codec_id; void* height; void* width; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 scalar_t__ BMP_HEADER_SIZE ;
 int ENOMEM ;
 scalar_t__ FFMAX (int ,scalar_t__) ;
 scalar_t__ INT_MAX ;
 scalar_t__ av_malloc (scalar_t__) ;
 int avio_read (int *,scalar_t__,scalar_t__) ;
 int avio_rl16 (int *) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int ff_codec_bmp_tags ;
 int ff_codec_get_id (int ,unsigned int) ;
 unsigned int ff_get_bmp_header (int *,TYPE_2__*,scalar_t__*) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int parse_video_info(AVIOContext *pb, AVStream *st)
{
    uint16_t size_asf;
    uint32_t size_bmp;
    unsigned int tag;

    st->codecpar->width = avio_rl32(pb);
    st->codecpar->height = avio_rl32(pb);
    avio_skip(pb, 1);
    size_asf = avio_rl16(pb);
    tag = ff_get_bmp_header(pb, st, &size_bmp);
    st->codecpar->codec_tag = tag;
    st->codecpar->codec_id = ff_codec_get_id(ff_codec_bmp_tags, tag);
    size_bmp = FFMAX(size_asf, size_bmp);

    if (size_bmp > BMP_HEADER_SIZE &&
        size_bmp < INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE) {
        int ret;
        st->codecpar->extradata_size = size_bmp - BMP_HEADER_SIZE;
        if (!(st->codecpar->extradata = av_malloc(st->codecpar->extradata_size +
                                               AV_INPUT_BUFFER_PADDING_SIZE))) {
            st->codecpar->extradata_size = 0;
            return AVERROR(ENOMEM);
        }
        memset(st->codecpar->extradata + st->codecpar->extradata_size , 0,
               AV_INPUT_BUFFER_PADDING_SIZE);
        if ((ret = avio_read(pb, st->codecpar->extradata,
                             st->codecpar->extradata_size)) < 0)
            return ret;
    }
    return 0;
}
