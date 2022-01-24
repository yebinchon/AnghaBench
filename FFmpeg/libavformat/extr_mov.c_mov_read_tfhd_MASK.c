#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int found_tfhd; int track_id; int flags; void* size; void* duration; void* stsd_id; int /*<<< orphan*/  implicit_offset; int /*<<< orphan*/  moof_offset; int /*<<< orphan*/  base_data_offset; } ;
struct TYPE_7__ {int trex_count; int /*<<< orphan*/  fc; int /*<<< orphan*/  frag_index; TYPE_2__ fragment; TYPE_1__* trex_data; } ;
struct TYPE_5__ {int track_id; void* stsd_id; void* duration; void* size; void* flags; } ;
typedef  TYPE_1__ MOVTrackExt ;
typedef  TYPE_2__ MOVFragment ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int MOV_TFHD_BASE_DATA_OFFSET ; 
 int MOV_TFHD_DEFAULT_BASE_IS_MOOF ; 
 int MOV_TFHD_DEFAULT_DURATION ; 
 int MOV_TFHD_DEFAULT_FLAGS ; 
 int MOV_TFHD_DEFAULT_SIZE ; 
 int MOV_TFHD_STSD_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVFragment *frag = &c->fragment;
    MOVTrackExt *trex = NULL;
    int flags, track_id, i;

    FUNC1(pb); /* version */
    flags = FUNC2(pb);

    track_id = FUNC3(pb);
    if (!track_id)
        return AVERROR_INVALIDDATA;
    for (i = 0; i < c->trex_count; i++)
        if (c->trex_data[i].track_id == track_id) {
            trex = &c->trex_data[i];
            break;
        }
    if (!trex) {
        FUNC0(c->fc, AV_LOG_WARNING, "could not find corresponding trex (id %u)\n", track_id);
        return 0;
    }
    c->fragment.found_tfhd = 1;
    frag->track_id = track_id;
    FUNC5(&c->frag_index, track_id);

    frag->base_data_offset = flags & MOV_TFHD_BASE_DATA_OFFSET ?
                             FUNC4(pb) : flags & MOV_TFHD_DEFAULT_BASE_IS_MOOF ?
                             frag->moof_offset : frag->implicit_offset;
    frag->stsd_id  = flags & MOV_TFHD_STSD_ID ? FUNC3(pb) : trex->stsd_id;

    frag->duration = flags & MOV_TFHD_DEFAULT_DURATION ?
                     FUNC3(pb) : trex->duration;
    frag->size     = flags & MOV_TFHD_DEFAULT_SIZE ?
                     FUNC3(pb) : trex->size;
    frag->flags    = flags & MOV_TFHD_DEFAULT_FLAGS ?
                     FUNC3(pb) : trex->flags;
    FUNC0(c->fc, AV_LOG_TRACE, "frag flags 0x%x\n", frag->flags);

    return 0;
}