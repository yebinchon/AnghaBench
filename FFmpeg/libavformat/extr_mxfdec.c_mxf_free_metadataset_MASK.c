#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_5__* sub_descriptors_refs; TYPE_5__* extradata; } ;
struct TYPE_17__ {TYPE_5__* structural_components_refs; } ;
struct TYPE_16__ {TYPE_5__* stream_offset_entries; TYPE_5__* flag_entries; TYPE_5__* temporal_offset_entries; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_5__* comment_refs; TYPE_5__* name; TYPE_5__* tracks_refs; } ;
struct TYPE_13__ {TYPE_5__* structural_components_refs; } ;
struct TYPE_12__ {TYPE_5__* value; TYPE_5__* name; } ;
struct TYPE_11__ {TYPE_5__* name; } ;
typedef  TYPE_1__ MXFTrack ;
typedef  TYPE_2__ MXFTaggedValue ;
typedef  TYPE_3__ MXFSequence ;
typedef  TYPE_4__ MXFPackage ;
typedef  TYPE_5__ MXFMetadataSet ;
typedef  TYPE_6__ MXFIndexTableSegment ;
typedef  TYPE_7__ MXFEssenceGroup ;
typedef  TYPE_8__ MXFDescriptor ;

/* Variables and functions */
#define  Descriptor 136 
#define  EssenceGroup 135 
#define  IndexTableSegment 134 
#define  MaterialPackage 133 
#define  MultipleDescriptor 132 
#define  Sequence 131 
#define  SourcePackage 130 
#define  TaggedValue 129 
#define  Track 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__**) ; 

__attribute__((used)) static void FUNC1(MXFMetadataSet **ctx, int freectx)
{
    MXFIndexTableSegment *seg;
    switch ((*ctx)->type) {
    case Descriptor:
        FUNC0(&((MXFDescriptor *)*ctx)->extradata);
        break;
    case MultipleDescriptor:
        FUNC0(&((MXFDescriptor *)*ctx)->sub_descriptors_refs);
        break;
    case Sequence:
        FUNC0(&((MXFSequence *)*ctx)->structural_components_refs);
        break;
    case EssenceGroup:
        FUNC0(&((MXFEssenceGroup *)*ctx)->structural_components_refs);
        break;
    case SourcePackage:
    case MaterialPackage:
        FUNC0(&((MXFPackage *)*ctx)->tracks_refs);
        FUNC0(&((MXFPackage *)*ctx)->name);
        FUNC0(&((MXFPackage *)*ctx)->comment_refs);
        break;
    case TaggedValue:
        FUNC0(&((MXFTaggedValue *)*ctx)->name);
        FUNC0(&((MXFTaggedValue *)*ctx)->value);
        break;
    case Track:
        FUNC0(&((MXFTrack *)*ctx)->name);
        break;
    case IndexTableSegment:
        seg = (MXFIndexTableSegment *)*ctx;
        FUNC0(&seg->temporal_offset_entries);
        FUNC0(&seg->flag_entries);
        FUNC0(&seg->stream_offset_entries);
    default:
        break;
    }
    if (freectx)
    FUNC0(ctx);
}