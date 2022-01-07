
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {TYPE_5__* sub_descriptors_refs; TYPE_5__* extradata; } ;
struct TYPE_17__ {TYPE_5__* structural_components_refs; } ;
struct TYPE_16__ {TYPE_5__* stream_offset_entries; TYPE_5__* flag_entries; TYPE_5__* temporal_offset_entries; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_5__* comment_refs; TYPE_5__* name; TYPE_5__* tracks_refs; } ;
struct TYPE_13__ {TYPE_5__* structural_components_refs; } ;
struct TYPE_12__ {TYPE_5__* value; TYPE_5__* name; } ;
struct TYPE_11__ {TYPE_5__* name; } ;
typedef TYPE_1__ MXFTrack ;
typedef TYPE_2__ MXFTaggedValue ;
typedef TYPE_3__ MXFSequence ;
typedef TYPE_4__ MXFPackage ;
typedef TYPE_5__ MXFMetadataSet ;
typedef TYPE_6__ MXFIndexTableSegment ;
typedef TYPE_7__ MXFEssenceGroup ;
typedef TYPE_8__ MXFDescriptor ;
 int av_freep (TYPE_5__**) ;

__attribute__((used)) static void mxf_free_metadataset(MXFMetadataSet **ctx, int freectx)
{
    MXFIndexTableSegment *seg;
    switch ((*ctx)->type) {
    case 136:
        av_freep(&((MXFDescriptor *)*ctx)->extradata);
        break;
    case 132:
        av_freep(&((MXFDescriptor *)*ctx)->sub_descriptors_refs);
        break;
    case 131:
        av_freep(&((MXFSequence *)*ctx)->structural_components_refs);
        break;
    case 135:
        av_freep(&((MXFEssenceGroup *)*ctx)->structural_components_refs);
        break;
    case 130:
    case 133:
        av_freep(&((MXFPackage *)*ctx)->tracks_refs);
        av_freep(&((MXFPackage *)*ctx)->name);
        av_freep(&((MXFPackage *)*ctx)->comment_refs);
        break;
    case 129:
        av_freep(&((MXFTaggedValue *)*ctx)->name);
        av_freep(&((MXFTaggedValue *)*ctx)->value);
        break;
    case 128:
        av_freep(&((MXFTrack *)*ctx)->name);
        break;
    case 134:
        seg = (MXFIndexTableSegment *)*ctx;
        av_freep(&seg->temporal_offset_entries);
        av_freep(&seg->flag_entries);
        av_freep(&seg->stream_offset_entries);
    default:
        break;
    }
    if (freectx)
    av_freep(ctx);
}
