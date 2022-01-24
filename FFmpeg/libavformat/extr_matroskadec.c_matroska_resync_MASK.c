#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {scalar_t__ buffer; scalar_t__ buf_ptr; int error; } ;
struct TYPE_14__ {int done; TYPE_1__* levels; TYPE_11__* ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  length; } ;
struct TYPE_12__ {TYPE_3__* pb; } ;
typedef  TYPE_2__ MatroskaDemuxContext ;
typedef  TYPE_3__ AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EBML_UNKNOWN_LENGTH ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int MATROSKA_ID_ATTACHMENTS ; 
 int MATROSKA_ID_CHAPTERS ; 
 int MATROSKA_ID_CLUSTER ; 
 int MATROSKA_ID_CUES ; 
 int MATROSKA_ID_INFO ; 
 int MATROSKA_ID_SEEKHEAD ; 
 int MATROSKA_ID_TAGS ; 
 int MATROSKA_ID_TRACKS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC8(MatroskaDemuxContext *matroska, int64_t last_pos)
{
    AVIOContext *pb = matroska->ctx->pb;
    uint32_t id;

    /* Try to seek to the last position to resync from. If this doesn't work,
     * we resync from the earliest position available: The start of the buffer. */
    if (last_pos < FUNC6(pb) && FUNC5(pb, last_pos + 1, SEEK_SET) < 0) {
        FUNC1(matroska->ctx, AV_LOG_WARNING,
               "Seek to desired resync point failed. Seeking to "
               "earliest point available instead.\n");
        FUNC5(pb, FUNC0(FUNC6(pb) + (pb->buffer - pb->buf_ptr),
                            last_pos + 1), SEEK_SET);
    }

    id = FUNC4(pb);

    // try to find a toplevel element
    while (!FUNC2(pb)) {
        if (id == MATROSKA_ID_INFO     || id == MATROSKA_ID_TRACKS      ||
            id == MATROSKA_ID_CUES     || id == MATROSKA_ID_TAGS        ||
            id == MATROSKA_ID_SEEKHEAD || id == MATROSKA_ID_ATTACHMENTS ||
            id == MATROSKA_ID_CLUSTER  || id == MATROSKA_ID_CHAPTERS) {
            /* Prepare the context for parsing of a level 1 element. */
            FUNC7(matroska, id, -1);
            /* Given that we are here means that an error has occurred,
             * so treat the segment as unknown length in order not to
             * discard valid data that happens to be beyond the designated
             * end of the segment. */
            matroska->levels[0].length = EBML_UNKNOWN_LENGTH;
            return 0;
        }
        id = (id << 8) | FUNC3(pb);
    }

    matroska->done = 1;
    return pb->error ? pb->error : AVERROR_EOF;
}