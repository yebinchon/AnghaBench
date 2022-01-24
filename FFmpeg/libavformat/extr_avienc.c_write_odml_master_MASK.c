#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  codec_type; } ;
struct TYPE_12__ {TYPE_2__** streams; TYPE_4__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_11__ {int master_index_max_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  indx_start; } ;
struct TYPE_10__ {TYPE_1__ indexes; } ;
struct TYPE_9__ {TYPE_3__* priv_data; TYPE_6__* codecpar; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVIStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVIContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *s, int stream_index)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    AVStream *st = s->streams[stream_index];
    AVCodecParameters *par = st->codecpar;
    AVIStream *avist = st->priv_data;
    unsigned char tag[5];
    int j;

    /* Starting to lay out AVI OpenDML master index.
        * We want to make it JUNK entry for now, since we'd
        * like to get away without making AVI an OpenDML one
        * for compatibility reasons. */
    avist->indexes.indx_start = FUNC6(pb, "JUNK");
    FUNC2(pb, 4);   /* wLongsPerEntry */
    FUNC1(pb, 0);     /* bIndexSubType (0 == frame index) */
    FUNC1(pb, 0);     /* bIndexType (0 == AVI_INDEX_OF_INDEXES) */
    FUNC3(pb, 0);   /* nEntriesInUse (will fill out later on) */
    FUNC7(pb, FUNC0(tag, stream_index, par->codec_type));
                        /* dwChunkId */
    FUNC4(pb, 0);   /* dwReserved[3] */
    FUNC3(pb, 0);   /* Must be 0.    */
    for (j = 0; j < avi->master_index_max_size * 2; j++)
        FUNC4(pb, 0);
    FUNC5(pb, avist->indexes.indx_start);
}