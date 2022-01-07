
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
struct TYPE_5__ {int metadata; int * pb; TYPE_2__* priv_data; } ;
typedef int GUIDParseTable ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int ASF_BOOL ;
 int ASF_DWORD ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int align_position (int *,int ,int ) ;
 int av_freep (int **) ;
 int * av_malloc (int) ;
 int avio_get_str16le (int *,int,int *,int) ;
 int avio_rl16 (int *) ;
 int avio_rl64 (int *) ;
 int process_metadata (TYPE_1__*,int *,int,int,int,int *) ;

__attribute__((used)) static int asf_read_ext_content(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint64_t size = avio_rl64(pb);
    uint16_t nb_desc = avio_rl16(pb);
    int i, ret;

    for (i = 0; i < nb_desc; i++) {
        uint16_t name_len, type, val_len;
        uint8_t *name = ((void*)0);

        name_len = avio_rl16(pb);
        if (!name_len)
            return AVERROR_INVALIDDATA;
        name = av_malloc(name_len);
        if (!name)
            return AVERROR(ENOMEM);
        avio_get_str16le(pb, name_len, name,
                         name_len);
        type = avio_rl16(pb);


        if (type == ASF_BOOL)
            type = ASF_DWORD;
        val_len = avio_rl16(pb);

        ret = process_metadata(s, name, name_len, val_len, type, &s->metadata);
        av_freep(&name);
        if (ret < 0)
            return ret;
    }

    align_position(pb, asf->offset, size);
    return 0;
}
