#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {size_t mapping; scalar_t__ blockflag; } ;
typedef  TYPE_1__ vorbis_enc_mode ;
struct TYPE_32__ {size_t* floor; size_t* mux; int coupling_steps; int* magnitude; int* angle; size_t* residue; } ;
typedef  TYPE_2__ vorbis_enc_mapping ;
typedef  int /*<<< orphan*/  vorbis_enc_floor ;
struct TYPE_31__ {int /*<<< orphan*/  remaining_samples; } ;
struct TYPE_30__ {int available; } ;
struct TYPE_33__ {int* log2_blocksize; int channels; float* coeffs; float* floor; TYPE_24__ afq; int /*<<< orphan*/ * residues; int /*<<< orphan*/ * floors; TYPE_2__* mappings; TYPE_1__* modes; scalar_t__ nmodes; TYPE_21__ bufqueue; } ;
typedef  TYPE_3__ vorbis_enc_context ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_36__ {int frame_size; TYPE_3__* priv_data; } ;
struct TYPE_35__ {int size; int duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; } ;
struct TYPE_34__ {int size_in_bits; } ;
typedef  TYPE_4__ PutBitContext ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_SKIP_SAMPLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_FLOOR_VALUES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_24__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_24__*,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (TYPE_6__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_21__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,float*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int,int) ; 
 int FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,float*,int,int) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_6__*,int) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx, AVPacket *avpkt,
                               const AVFrame *frame, int *got_packet_ptr)
{
    vorbis_enc_context *venc = avctx->priv_data;
    int i, ret, need_more;
    int frame_size = 1 << (venc->log2_blocksize[1] - 1);
    vorbis_enc_mode *mode;
    vorbis_enc_mapping *mapping;
    PutBitContext pb;

    if (frame) {
        AVFrame *clone;
        if ((ret = FUNC6(&venc->afq, frame)) < 0)
            return ret;
        clone = FUNC3(frame);
        if (!clone)
            return FUNC0(ENOMEM);
        FUNC9(avctx, &venc->bufqueue, clone);
    } else
        if (!venc->afq.remaining_samples)
            return 0;

    need_more = venc->bufqueue.available * avctx->frame_size < frame_size;
    need_more = frame && need_more;
    if (need_more)
        return 0;

    /* Pad the bufqueue with empty frames for encoding the last packet. */
    if (!frame) {
        if (venc->bufqueue.available * avctx->frame_size < frame_size) {
            int frames_needed = (frame_size/avctx->frame_size) - venc->bufqueue.available;
            int i;

            for (i = 0; i < frames_needed; i++) {
               AVFrame *empty = FUNC19(avctx, venc->channels);
               if (!empty)
                   return FUNC0(ENOMEM);

               FUNC9(avctx, &venc->bufqueue, empty);
            }
        }
    }

    FUNC15(venc, avctx->frame_size);

    if (!FUNC2(venc))
        return 0;

    if ((ret = FUNC8(avctx, avpkt, 8192, 0)) < 0)
        return ret;

    FUNC14(&pb, avpkt->data, avpkt->size);

    if (pb.size_in_bits - FUNC17(&pb) < 1 + FUNC13(venc->nmodes - 1)) {
        FUNC4(avctx, AV_LOG_ERROR, "output buffer is too small\n");
        return FUNC0(EINVAL);
    }

    FUNC16(&pb, 1, 0); // magic bit

    FUNC16(&pb, FUNC13(venc->nmodes - 1), 1); // Mode for current frame

    mode    = &venc->modes[1];
    mapping = &venc->mappings[mode->mapping];
    if (mode->blockflag) {
        FUNC16(&pb, 1, 1); // Previous windowflag
        FUNC16(&pb, 1, 1); // Next windowflag
    }

    for (i = 0; i < venc->channels; i++) {
        vorbis_enc_floor *fc = &venc->floors[mapping->floor[mapping->mux[i]]];
        uint16_t posts[MAX_FLOOR_VALUES];
        FUNC11(venc, fc, &venc->coeffs[i * frame_size], posts, frame_size);
        if (FUNC10(venc, fc, &pb, posts, &venc->floor[i * frame_size], frame_size)) {
            FUNC4(avctx, AV_LOG_ERROR, "output buffer is too small\n");
            return FUNC0(EINVAL);
        }
    }

    for (i = 0; i < venc->channels * frame_size; i++)
        venc->coeffs[i] /= venc->floor[i];

    for (i = 0; i < mapping->coupling_steps; i++) {
        float *mag = venc->coeffs + mapping->magnitude[i] * frame_size;
        float *ang = venc->coeffs + mapping->angle[i]     * frame_size;
        int j;
        for (j = 0; j < frame_size; j++) {
            float a = ang[j];
            ang[j] -= mag[j];
            if (mag[j] > 0)
                ang[j] = -ang[j];
            if (ang[j] < 0)
                mag[j] = a;
        }
    }

    if (FUNC18(venc, &venc->residues[mapping->residue[mapping->mux[0]]],
                       &pb, venc->coeffs, frame_size, venc->channels)) {
        FUNC4(avctx, AV_LOG_ERROR, "output buffer is too small\n");
        return FUNC0(EINVAL);
    }

    FUNC12(&pb);
    avpkt->size = FUNC17(&pb) >> 3;

    FUNC7(&venc->afq, frame_size, &avpkt->pts, &avpkt->duration);

    if (frame_size > avpkt->duration) {
        uint8_t *side = FUNC5(avpkt, AV_PKT_DATA_SKIP_SAMPLES, 10);
        if (!side)
            return FUNC0(ENOMEM);
        FUNC1(&side[4], frame_size - avpkt->duration);
    }

    *got_packet_ptr = 1;
    return 0;
}