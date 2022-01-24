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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {char* data; int size; int /*<<< orphan*/  pos; } ;
struct TYPE_11__ {int searchstr_len; int /*<<< orphan*/ * searchstr; int /*<<< orphan*/ * boundary; scalar_t__ strict_mime_boundary; } ;
typedef  TYPE_1__ MPJPEGDemuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int const) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s, AVPacket *pkt)
{
    int size;
    int ret;

    MPJPEGDemuxContext *mpjpeg = s->priv_data;
    if (mpjpeg->boundary == NULL) {
        uint8_t* boundary = NULL;
        if (mpjpeg->strict_mime_boundary) {
            boundary = FUNC12(s->pb);
        }
        if (boundary != NULL) {
            mpjpeg->boundary = FUNC2("--%s", boundary);
            mpjpeg->searchstr = FUNC2("\r\n--%s\r\n", boundary);
            FUNC3(&boundary);
        } else {
            mpjpeg->boundary = FUNC7("--");
            mpjpeg->searchstr = FUNC7("\r\n--");
        }
        if (!mpjpeg->boundary || !mpjpeg->searchstr) {
            FUNC3(&mpjpeg->boundary);
            FUNC3(&mpjpeg->searchstr);
            return FUNC0(ENOMEM);
        }
        mpjpeg->searchstr_len = FUNC14(mpjpeg->searchstr);
    }

    ret = FUNC13(s->pb, &size, mpjpeg->boundary, s);


    if (ret < 0)
        return ret;

    if (size > 0) {
        /* size has been provided to us in MIME header */
        ret = FUNC4(s->pb, pkt, size);
    } else {
        /* no size was given -- we read until the next boundary or end-of-file */
        int remaining = 0, len;

        const int read_chunk = 2048;
        FUNC5(pkt);
        pkt->data = NULL;
        pkt->size = 0;
        pkt->pos  = FUNC9(s->pb);

        while ((ret = FUNC10(s->pb, read_chunk - remaining)) >= 0 && /* we may need to return as much as all we've read back to the buffer */
               (ret = FUNC1(s->pb, pkt, read_chunk - remaining)) >= 0) {
            /* scan the new data */
            char *start;

            len = ret + remaining;
            start = pkt->data + pkt->size - len;
            do {
                if (!FUNC11(start, mpjpeg->searchstr, mpjpeg->searchstr_len)) {
                    // got the boundary! rewind the stream
                    FUNC8(s->pb, -len, SEEK_CUR);
                    pkt->size -= len;
                    return pkt->size;
                }
                len--;
                start++;
            } while (len >= mpjpeg->searchstr_len);
            remaining = len;
        }

        /* error or EOF occurred */
        if (ret == AVERROR_EOF) {
            ret = pkt->size > 0 ? pkt->size : AVERROR_EOF;
        } else {
            FUNC6(pkt);
        }
    }

    return ret;
}