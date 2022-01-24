#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_26__ {int nb_streams; TYPE_2__** streams; TYPE_6__* priv_data; TYPE_4__* pb; } ;
struct TYPE_25__ {int riff_id; int master_index_max_size; int /*<<< orphan*/  movi_list; } ;
struct TYPE_24__ {int pos; int flags; scalar_t__ len; } ;
struct TYPE_23__ {int seekable; } ;
struct TYPE_19__ {int master_odml_riff_id_base; int entry; } ;
struct TYPE_22__ {TYPE_18__ indexes; } ;
struct TYPE_21__ {TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_20__ {int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVIStream ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVIIentry ;
typedef  TYPE_6__ AVIContext ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int AVI_MASTER_INDEX_ENTRY_SIZE ; 
 int AVI_MASTER_INDEX_PREFIX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (TYPE_18__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    char tag[5];
    char ix_tag[] = "ix00";
    int i, j;

    FUNC0(pb->seekable & AVIO_SEEKABLE_NORMAL);

    for (i = 0; i < s->nb_streams; i++) {
        AVIStream *avist = s->streams[i]->priv_data;
        if (avi->riff_id - avist->indexes.master_odml_riff_id_base == avi->master_index_max_size) {
            int64_t pos;
            int size = AVI_MASTER_INDEX_PREFIX_SIZE + AVI_MASTER_INDEX_ENTRY_SIZE * avi->master_index_max_size;

            pos = FUNC4(pb);
            FUNC10(s, i, pos, size);
            FUNC11(s, i);
            FUNC1(FUNC4(pb) - pos == size);
            avist->indexes.master_odml_riff_id_base = avi->riff_id - 1;
        }
        FUNC0(avi->riff_id - avist->indexes.master_odml_riff_id_base < avi->master_index_max_size);
    }

    for (i = 0; i < s->nb_streams; i++) {
        AVIStream *avist = s->streams[i]->priv_data;
        int64_t ix;

        FUNC3(tag, i, s->streams[i]->codecpar->codec_type);
        ix_tag[3] = '0' + i;

        /* Writing AVI OpenDML leaf index chunk */
        ix = FUNC4(pb);
        FUNC9(pb, ix_tag);      /* ix?? */
        FUNC7(pb, avist->indexes.entry * 8 + 24);
        /* chunk size */
        FUNC6(pb, 2);           /* wLongsPerEntry */
        FUNC5(pb, 0);             /* bIndexSubType (0 == frame index) */
        FUNC5(pb, 1);             /* bIndexType (1 == AVI_INDEX_OF_CHUNKS) */
        FUNC7(pb, avist->indexes.entry);
        /* nEntriesInUse */
        FUNC9(pb, tag);         /* dwChunkId */
        FUNC8(pb, avi->movi_list); /* qwBaseOffset */
        FUNC7(pb, 0);              /* dwReserved_3 (must be 0) */

        for (j = 0; j < avist->indexes.entry; j++) {
            AVIIentry *ie = FUNC2(&avist->indexes, j);
            FUNC7(pb, ie->pos + 8);
            FUNC7(pb, ((uint32_t) ie->len & ~0x80000000) |
                          (ie->flags & 0x10 ? 0 : 0x80000000));
        }

        FUNC10(s, i, ix, FUNC4(pb) - ix);
    }
    return 0;
}