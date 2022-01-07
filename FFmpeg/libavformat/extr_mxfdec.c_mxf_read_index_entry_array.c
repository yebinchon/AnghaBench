
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_index_entries; int * stream_offset_entries; void** flag_entries; void** temporal_offset_entries; } ;
typedef TYPE_1__ MXFIndexTableSegment ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 void* av_calloc (int,int) ;
 int av_freep (void***) ;
 scalar_t__ avio_feof (int *) ;
 void* avio_r8 (int *) ;
 void* avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int mxf_read_index_entry_array(AVIOContext *pb, MXFIndexTableSegment *segment)
{
    int i, length;

    segment->nb_index_entries = avio_rb32(pb);

    length = avio_rb32(pb);
    if(segment->nb_index_entries && length < 11)
        return AVERROR_INVALIDDATA;

    if (!(segment->temporal_offset_entries=av_calloc(segment->nb_index_entries, sizeof(*segment->temporal_offset_entries))) ||
        !(segment->flag_entries = av_calloc(segment->nb_index_entries, sizeof(*segment->flag_entries))) ||
        !(segment->stream_offset_entries = av_calloc(segment->nb_index_entries, sizeof(*segment->stream_offset_entries)))) {
        av_freep(&segment->temporal_offset_entries);
        av_freep(&segment->flag_entries);
        return AVERROR(ENOMEM);
    }

    for (i = 0; i < segment->nb_index_entries; i++) {
        if(avio_feof(pb))
            return AVERROR_INVALIDDATA;
        segment->temporal_offset_entries[i] = avio_r8(pb);
        avio_r8(pb);
        segment->flag_entries[i] = avio_r8(pb);
        segment->stream_offset_entries[i] = avio_rb64(pb);
        avio_skip(pb, length - 11);
    }
    return 0;
}
