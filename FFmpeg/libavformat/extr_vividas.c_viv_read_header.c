
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_13__ {int sb_key; scalar_t__ n_sb_blocks; int current_sb; TYPE_1__* sb_blocks; void* sb_offset; } ;
typedef TYPE_2__ VividasDemuxContext ;
struct TYPE_14__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int size; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,int *,int) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 void* avio_tell (int *) ;
 int decode_key (int *) ;
 int ffio_read_varlen (int *) ;
 int load_sb_block (TYPE_3__*,TYPE_2__*,int ) ;
 int * read_vblock (int *,int*,int,int*,int) ;
 int track_header (TYPE_2__*,TYPE_3__*,int *,int) ;
 int track_index (TYPE_2__*,TYPE_3__*,int *,int) ;

__attribute__((used)) static int viv_read_header(AVFormatContext *s)
{
    VividasDemuxContext *viv = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t header_end;
    int num_tracks;
    uint32_t key, k2;
    uint32_t v;
    uint8_t keybuffer[187];
    uint32_t b22_size = 0;
    uint32_t b22_key = 0;
    uint8_t *buf = 0;
    int ret;

    avio_skip(pb, 9);

    header_end = avio_tell(pb);

    header_end += ffio_read_varlen(pb);

    num_tracks = avio_r8(pb);

    if (num_tracks != 1) {
        av_log(s, AV_LOG_ERROR, "number of tracks %d is not 1\n", num_tracks);
        return AVERROR(EINVAL);
    }

    v = avio_r8(pb);
    avio_seek(pb, v, SEEK_CUR);

    avio_read(pb, keybuffer, 187);
    key = decode_key(keybuffer);
    viv->sb_key = key;

    avio_rl32(pb);

    for (;;) {
        int64_t here = avio_tell(pb);
        int block_len, block_type;

        if (here >= header_end)
            break;

        block_len = ffio_read_varlen(pb);
        if (avio_feof(pb) || block_len <= 0)
            return AVERROR_INVALIDDATA;

        block_type = avio_r8(pb);

        if (block_type == 22) {
            avio_read(pb, keybuffer, 187);
            b22_key = decode_key(keybuffer);
            b22_size = avio_rl32(pb);
        }

        avio_seek(pb, here + block_len, SEEK_SET);
    }

    if (b22_size) {
        k2 = b22_key;
        buf = read_vblock(pb, &v, b22_key, &k2, 0);
        if (!buf)
            return AVERROR(EIO);

        av_free(buf);
    }

    k2 = key;
    buf = read_vblock(pb, &v, key, &k2, 0);
    if (!buf)
        return AVERROR(EIO);
    ret = track_header(viv, s, buf, v);
    av_free(buf);
    if (ret < 0)
        return ret;

    buf = read_vblock(pb, &v, key, &k2, v);
    if (!buf)
        return AVERROR(EIO);
    ret = track_index(viv, s, buf, v);
    av_free(buf);
    if (ret < 0)
        return ret;

    viv->sb_offset = avio_tell(pb);
    if (viv->n_sb_blocks > 0) {
        viv->current_sb = 0;
        load_sb_block(s, viv, viv->sb_blocks[0].size);
    } else {
        viv->current_sb = -1;
    }

    return 0;
}
