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
struct TYPE_7__ {int /*<<< orphan*/  ctx_flags; TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {TYPE_1__* channels; } ;
struct TYPE_5__ {int video_stream_index; int audio_stream_index; } ;
typedef  TYPE_2__ StrDemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  EIO ; 
 int RAW_CD_SECTOR_SIZE ; 
 int RIFF_HEADER_SIZE ; 
 scalar_t__ RIFF_TAG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    StrDemuxContext *str = s->priv_data;
    unsigned char sector[RAW_CD_SECTOR_SIZE];
    int start;
    int i;

    /* skip over any RIFF header */
    if (FUNC2(pb, sector, RIFF_HEADER_SIZE) != RIFF_HEADER_SIZE)
        return FUNC0(EIO);
    if (FUNC1(&sector[0]) == RIFF_TAG)
        start = RIFF_HEADER_SIZE;
    else
        start = 0;

    FUNC3(pb, start, SEEK_SET);

    for(i=0; i<32; i++){
        str->channels[i].video_stream_index=
        str->channels[i].audio_stream_index= -1;
    }

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}