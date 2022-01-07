
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int found_tfhd; int track_id; int flags; void* size; void* duration; void* stsd_id; int implicit_offset; int moof_offset; int base_data_offset; } ;
struct TYPE_7__ {int trex_count; int fc; int frag_index; TYPE_2__ fragment; TYPE_1__* trex_data; } ;
struct TYPE_5__ {int track_id; void* stsd_id; void* duration; void* size; void* flags; } ;
typedef TYPE_1__ MOVTrackExt ;
typedef TYPE_2__ MOVFragment ;
typedef TYPE_3__ MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_TRACE ;
 int AV_LOG_WARNING ;
 int MOV_TFHD_BASE_DATA_OFFSET ;
 int MOV_TFHD_DEFAULT_BASE_IS_MOOF ;
 int MOV_TFHD_DEFAULT_DURATION ;
 int MOV_TFHD_DEFAULT_FLAGS ;
 int MOV_TFHD_DEFAULT_SIZE ;
 int MOV_TFHD_STSD_ID ;
 int av_log (int ,int ,char*,int) ;
 int avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 void* avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int set_frag_stream (int *,int) ;

__attribute__((used)) static int mov_read_tfhd(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVFragment *frag = &c->fragment;
    MOVTrackExt *trex = ((void*)0);
    int flags, track_id, i;

    avio_r8(pb);
    flags = avio_rb24(pb);

    track_id = avio_rb32(pb);
    if (!track_id)
        return AVERROR_INVALIDDATA;
    for (i = 0; i < c->trex_count; i++)
        if (c->trex_data[i].track_id == track_id) {
            trex = &c->trex_data[i];
            break;
        }
    if (!trex) {
        av_log(c->fc, AV_LOG_WARNING, "could not find corresponding trex (id %u)\n", track_id);
        return 0;
    }
    c->fragment.found_tfhd = 1;
    frag->track_id = track_id;
    set_frag_stream(&c->frag_index, track_id);

    frag->base_data_offset = flags & MOV_TFHD_BASE_DATA_OFFSET ?
                             avio_rb64(pb) : flags & MOV_TFHD_DEFAULT_BASE_IS_MOOF ?
                             frag->moof_offset : frag->implicit_offset;
    frag->stsd_id = flags & MOV_TFHD_STSD_ID ? avio_rb32(pb) : trex->stsd_id;

    frag->duration = flags & MOV_TFHD_DEFAULT_DURATION ?
                     avio_rb32(pb) : trex->duration;
    frag->size = flags & MOV_TFHD_DEFAULT_SIZE ?
                     avio_rb32(pb) : trex->size;
    frag->flags = flags & MOV_TFHD_DEFAULT_FLAGS ?
                     avio_rb32(pb) : trex->flags;
    av_log(c->fc, AV_LOG_TRACE, "frag flags 0x%x\n", frag->flags);

    return 0;
}
