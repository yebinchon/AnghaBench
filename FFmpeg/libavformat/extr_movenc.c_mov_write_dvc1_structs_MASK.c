#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_6__ {int packet_seq; int packet_entry; int slices; } ;
struct TYPE_9__ {int vos_len; scalar_t__ start_dts; TYPE_3__* st; int /*<<< orphan*/  const* vos_data; TYPE_1__ vc1_info; } ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_8__ {TYPE_2__ avg_frame_rate; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_4__ MOVTrack ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int PROFILE_ADVANCED ; 
 scalar_t__ VC1_CODE_SEQHDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  const* FUNC4 (int) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC16(MOVTrack *track, uint8_t *buf)
{
    uint8_t *unescaped;
    const uint8_t *start, *next, *end = track->vos_data + track->vos_len;
    int unescaped_size, seq_found = 0;
    int level = 0, interlace = 0;
    int packet_seq   = track->vc1_info.packet_seq;
    int packet_entry = track->vc1_info.packet_entry;
    int slices       = track->vc1_info.slices;
    PutBitContext pbc;

    if (track->start_dts == AV_NOPTS_VALUE) {
        /* No packets written yet, vc1_info isn't authoritative yet. */
        /* Assume inline sequence and entry headers. */
        packet_seq = packet_entry = 1;
        FUNC3(NULL, AV_LOG_WARNING,
               "moov atom written before any packets, unable to write correct "
               "dvc1 atom. Set the delay_moov flag to fix this.\n");
    }

    unescaped = FUNC4(track->vos_len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!unescaped)
        return FUNC0(ENOMEM);
    start = FUNC5(track->vos_data, end);
    for (next = start; next < end; start = next) {
        GetBitContext gb;
        int size;
        next = FUNC5(start + 4, end);
        size = next - start - 4;
        if (size <= 0)
            continue;
        unescaped_size = FUNC15(start + 4, size, unescaped);
        FUNC9(&gb, unescaped, 8 * unescaped_size);
        if (FUNC1(start) == VC1_CODE_SEQHDR) {
            int profile = FUNC7(&gb, 2);
            if (profile != PROFILE_ADVANCED) {
                FUNC2(unescaped);
                return FUNC0(ENOSYS);
            }
            seq_found = 1;
            level = FUNC7(&gb, 3);
            /* chromaformat, frmrtq_postproc, bitrtq_postproc, postprocflag,
             * width, height */
            FUNC14(&gb, 2 + 3 + 5 + 1 + 2*12);
            FUNC13(&gb, 1); /* broadcast */
            interlace = FUNC8(&gb);
            FUNC13(&gb, 4); /* tfcntrflag, finterpflag, reserved, psf */
        }
    }
    if (!seq_found) {
        FUNC2(unescaped);
        return FUNC0(ENOSYS);
    }

    FUNC10(&pbc, buf, 7);
    /* VC1DecSpecStruc */
    FUNC11(&pbc, 4, 12); /* profile - advanced */
    FUNC11(&pbc, 3, level);
    FUNC11(&pbc, 1, 0); /* reserved */
    /* VC1AdvDecSpecStruc */
    FUNC11(&pbc, 3, level);
    FUNC11(&pbc, 1, 0); /* cbr */
    FUNC11(&pbc, 6, 0); /* reserved */
    FUNC11(&pbc, 1, !interlace); /* no interlace */
    FUNC11(&pbc, 1, !packet_seq); /* no multiple seq */
    FUNC11(&pbc, 1, !packet_entry); /* no multiple entry */
    FUNC11(&pbc, 1, !slices); /* no slice code */
    FUNC11(&pbc, 1, 0); /* no bframe */
    FUNC11(&pbc, 1, 0); /* reserved */

    /* framerate */
    if (track->st->avg_frame_rate.num > 0 && track->st->avg_frame_rate.den > 0)
        FUNC12(&pbc, track->st->avg_frame_rate.num / track->st->avg_frame_rate.den);
    else
        FUNC12(&pbc, 0xffffffff);

    FUNC6(&pbc);

    FUNC2(unescaped);

    return 0;
}