
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int pb; int level; int s; } ;
typedef TYPE_1__ MP4DescrParseContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ MAX_LEVEL ;





 int SEEK_SET ;
 int av_log (int ,int ,char*,...) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int ff_mp4_read_descr (int ,int *,int*) ;
 int parse_MP4DecConfigDescrTag (TYPE_1__*,scalar_t__,int) ;
 int parse_MP4ESDescrTag (TYPE_1__*,scalar_t__,int) ;
 int parse_MP4IODescrTag (TYPE_1__*,scalar_t__,int) ;
 int parse_MP4ODescrTag (TYPE_1__*,scalar_t__,int) ;
 int parse_MP4SLDescrTag (TYPE_1__*,scalar_t__,int) ;
 int update_offsets (int *,scalar_t__*,int*) ;

__attribute__((used)) static int parse_mp4_descr(MP4DescrParseContext *d, int64_t off, int len,
                           int target_tag)
{
    int tag;
    int len1 = ff_mp4_read_descr(d->s, &d->pb, &tag);
    int ret = 0;

    update_offsets(&d->pb, &off, &len);
    if (len < 0 || len1 > len || len1 <= 0) {
        av_log(d->s, AV_LOG_ERROR,
               "Tag %x length violation new length %d bytes remaining %d\n",
               tag, len1, len);
        return AVERROR_INVALIDDATA;
    }

    if (d->level++ >= MAX_LEVEL) {
        av_log(d->s, AV_LOG_ERROR, "Maximum MP4 descriptor level exceeded\n");
        ret = AVERROR_INVALIDDATA;
        goto done;
    }

    if (target_tag && tag != target_tag) {
        av_log(d->s, AV_LOG_ERROR, "Found tag %x expected %x\n", tag,
               target_tag);
        ret = AVERROR_INVALIDDATA;
        goto done;
    }

    switch (tag) {
    case 130:
        ret = parse_MP4IODescrTag(d, off, len1);
        break;
    case 129:
        ret = parse_MP4ODescrTag(d, off, len1);
        break;
    case 131:
        ret = parse_MP4ESDescrTag(d, off, len1);
        break;
    case 132:
        ret = parse_MP4DecConfigDescrTag(d, off, len1);
        break;
    case 128:
        ret = parse_MP4SLDescrTag(d, off, len1);
        break;
    }


done:
    d->level--;
    avio_seek(&d->pb, off + len1, SEEK_SET);
    return ret;
}
