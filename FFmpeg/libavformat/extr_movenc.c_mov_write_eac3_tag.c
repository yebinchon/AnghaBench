
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct eac3_info {int num_ind_sub; int data_rate; TYPE_1__* substream; } ;
struct TYPE_5__ {struct eac3_info* eac3_priv; } ;
struct TYPE_4__ {int fscod; int bsid; int bsmod; int acmod; int lfeon; int num_dep_sub; int chan_loc; } ;
typedef int PutBitContext ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_free (int *) ;
 int av_log (int *,int ,char*) ;
 int * av_malloc (int) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;

__attribute__((used)) static int mov_write_eac3_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    PutBitContext pbc;
    uint8_t *buf;
    struct eac3_info *info;
    int size, i;

    if (!track->eac3_priv) {
        av_log(s, AV_LOG_ERROR,
               "Cannot write moov atom before EAC3 packets parsed.\n");
        return AVERROR(EINVAL);
    }

    info = track->eac3_priv;
    size = 2 + ((34 * (info->num_ind_sub + 1) + 7) >> 3);
    buf = av_malloc(size);
    if (!buf) {
        return AVERROR(ENOMEM);
    }

    init_put_bits(&pbc, buf, size);
    put_bits(&pbc, 13, info->data_rate);
    put_bits(&pbc, 3, info->num_ind_sub);
    for (i = 0; i <= info->num_ind_sub; i++) {
        put_bits(&pbc, 2, info->substream[i].fscod);
        put_bits(&pbc, 5, info->substream[i].bsid);
        put_bits(&pbc, 1, 0);
        put_bits(&pbc, 1, 0);
        put_bits(&pbc, 3, info->substream[i].bsmod);
        put_bits(&pbc, 3, info->substream[i].acmod);
        put_bits(&pbc, 1, info->substream[i].lfeon);
        put_bits(&pbc, 5, 0);
        put_bits(&pbc, 4, info->substream[i].num_dep_sub);
        if (!info->substream[i].num_dep_sub) {
            put_bits(&pbc, 1, 0);
        } else {
            put_bits(&pbc, 9, info->substream[i].chan_loc);
        }
    }
    flush_put_bits(&pbc);
    size = put_bits_count(&pbc) >> 3;

    avio_wb32(pb, size + 8);
    ffio_wfourcc(pb, "dec3");
    avio_write(pb, buf, size);

    av_free(buf);

    return size;
}
