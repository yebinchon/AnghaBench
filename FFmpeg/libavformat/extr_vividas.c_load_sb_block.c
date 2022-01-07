
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int n_sb_entries; size_t current_sb; scalar_t__ current_sb_entry; TYPE_2__* sb_entries; TYPE_1__* sb_blocks; int * sb_pb; int * sb_buf; int sb_key; } ;
typedef TYPE_3__ VividasDemuxContext ;
struct TYPE_10__ {int pb; } ;
struct TYPE_8__ {int flag; int size; } ;
struct TYPE_7__ {int n_packets; } ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int av_free (int *) ;
 int * avio_alloc_context (int *,int ,int ,int *,int *,int *,int *) ;
 int avio_r8 (int *) ;
 int ffio_read_varlen (int *) ;
 int * read_sb_block (int ,int *,int *,unsigned int) ;

__attribute__((used)) static void load_sb_block(AVFormatContext *s, VividasDemuxContext *viv, unsigned expected_size)
{
    uint32_t size = 0;
    int i;
    AVIOContext *pb = 0;

    if (viv->sb_pb) {
        av_free(viv->sb_pb);
        viv->sb_pb = ((void*)0);
    }

    if (viv->sb_buf)
        av_free(viv->sb_buf);

    viv->sb_buf = read_sb_block(s->pb, &size, &viv->sb_key, expected_size);
    if (!viv->sb_buf) {
        return;
    }

    pb = avio_alloc_context(viv->sb_buf, size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!pb)
        return;

    viv->sb_pb = pb;

    avio_r8(pb);
    avio_r8(pb);
    ffio_read_varlen(pb);
    avio_r8(pb);
    ffio_read_varlen(pb);

    viv->n_sb_entries = viv->sb_blocks[viv->current_sb].n_packets;

    for (i = 0; i < viv->n_sb_entries; i++) {
        viv->sb_entries[i].size = ffio_read_varlen(pb);
        viv->sb_entries[i].flag = avio_r8(pb);
    }

    ffio_read_varlen(pb);
    avio_r8(pb);

    viv->current_sb_entry = 0;
}
