
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {int * pb; TYPE_2__* priv_data; } ;
typedef int GUIDParseTable ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int align_position (int *,int ,int ) ;
 int asf_read_metadata (TYPE_1__*,char const* const,int,int *,int) ;
 int av_freep (int **) ;
 int * av_malloc (int) ;
 int avio_rl16 (int *) ;
 int avio_rl64 (int *) ;

__attribute__((used)) static int asf_read_content_desc(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    static const char *const titles[] =
    { "Title", "Author", "Copyright", "Description", "Rate" };
    uint16_t len[5], buflen[5] = { 0 };
    uint8_t *ch;
    uint64_t size = avio_rl64(pb);

    for (i = 0; i < 5; i++) {
        len[i] = avio_rl16(pb);

        buflen[i] = 2 * len[i] + 1;
    }

    for (i = 0; i < 5; i++) {
        ch = av_malloc(buflen[i]);
        if (!ch)
            return(AVERROR(ENOMEM));
        asf_read_metadata(s, titles[i], len[i], ch, buflen[i]);
        av_freep(&ch);
    }
    align_position(pb, asf->offset, size);

    return 0;
}
