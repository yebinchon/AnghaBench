#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  void* uint64_t ;
typedef  int nuv_frametype ;
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  stream_index; void* pts; void* pos; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  a_id; int /*<<< orphan*/  v_id; scalar_t__ rtjpg_video; } ;
typedef  TYPE_1__ NUVContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 void* FUNC1 (int*) ; 
 int /*<<< orphan*/  EIO ; 
 int HDRSIZE ; 
#define  NUV_AUDIO 131 
#define  NUV_EXTRADATA 130 
#define  NUV_SEEKP 129 
#define  NUV_VIDEO 128 
 int FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, AVPacket *pkt)
{
    NUVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    uint8_t hdr[HDRSIZE];
    nuv_frametype frametype;
    int ret, size;

    while (!FUNC8(pb)) {
        int copyhdrsize = ctx->rtjpg_video ? HDRSIZE : 0;
        uint64_t pos    = FUNC11(pb);

        ret = FUNC9(pb, hdr, HDRSIZE);
        if (ret < HDRSIZE)
            return ret < 0 ? ret : FUNC0(EIO);

        frametype = hdr[0];
        size      = FUNC2(FUNC1(&hdr[8]));

        switch (frametype) {
        case NUV_EXTRADATA:
            if (!ctx->rtjpg_video) {
                FUNC10(pb, size);
                break;
            }
        case NUV_VIDEO:
            if (ctx->v_id < 0) {
                FUNC4(s, AV_LOG_ERROR, "Video packet in file without video stream!\n");
                FUNC10(pb, size);
                break;
            }
            ret = FUNC5(pkt, copyhdrsize + size);
            if (ret < 0)
                return ret;

            pkt->pos          = pos;
            pkt->flags       |= hdr[2] == 0 ? AV_PKT_FLAG_KEY : 0;
            pkt->pts          = FUNC1(&hdr[4]);
            pkt->stream_index = ctx->v_id;
            FUNC12(pkt->data, hdr, copyhdrsize);
            ret = FUNC9(pb, pkt->data + copyhdrsize, size);
            if (ret < 0) {
                FUNC6(pkt);
                return ret;
            }
            if (ret < size)
                FUNC7(pkt, copyhdrsize + ret);
            return 0;
        case NUV_AUDIO:
            if (ctx->a_id < 0) {
                FUNC4(s, AV_LOG_ERROR, "Audio packet in file without audio stream!\n");
                FUNC10(pb, size);
                break;
            }
            ret               = FUNC3(pb, pkt, size);
            pkt->flags       |= AV_PKT_FLAG_KEY;
            pkt->pos          = pos;
            pkt->pts          = FUNC1(&hdr[4]);
            pkt->stream_index = ctx->a_id;
            if (ret < 0)
                return ret;
            return 0;
        case NUV_SEEKP:
            // contains no data, size value is invalid
            break;
        default:
            FUNC10(pb, size);
            break;
        }
    }

    return FUNC0(EIO);
}