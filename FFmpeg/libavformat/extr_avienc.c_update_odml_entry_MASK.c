#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_14__ {TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_13__ {TYPE_7__** streams; TYPE_4__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {int riff_id; } ;
struct TYPE_10__ {int master_odml_riff_id_base; int audio_strm_offset; int entry; scalar_t__ indx_start; } ;
struct TYPE_11__ {int audio_strm_length; int sample_requested; TYPE_2__ indexes; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef  TYPE_3__ AVIStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVIContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC9(AVFormatContext *s, int stream_index, int64_t ix, int size)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    AVIStream *avist = s->streams[stream_index]->priv_data;
    int64_t pos;
    int au_byterate, au_ssize, au_scale;

    FUNC0(pb);
    pos = FUNC3(pb);

    /* Updating one entry in the AVI OpenDML master index */
    FUNC1(pb, avist->indexes.indx_start - 8, SEEK_SET);
    FUNC8(pb, "indx");             /* enabling this entry */
    FUNC2(pb, 8);
    FUNC4(pb, avi->riff_id - avist->indexes.master_odml_riff_id_base);          /* nEntriesInUse */
    FUNC2(pb, 16 * (avi->riff_id - avist->indexes.master_odml_riff_id_base));
    FUNC5(pb, ix);                    /* qwOffset */
    FUNC4(pb, size);                  /* dwSize */
    FUNC7(s->streams[stream_index], &au_byterate, &au_ssize, &au_scale);
    if (s->streams[stream_index]->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && au_ssize > 0) {
        uint32_t audio_segm_size = (avist->audio_strm_length - avist->indexes.audio_strm_offset);
        if ((audio_segm_size % au_ssize > 0) && !avist->sample_requested) {
            FUNC6(s, "OpenDML index duration for audio packets with partial frames");
            avist->sample_requested = 1;
        }
        FUNC4(pb, audio_segm_size / au_ssize);  /* dwDuration (sample count) */
    } else
        FUNC4(pb, avist->indexes.entry);  /* dwDuration (packet count) */

    FUNC1(pb, pos, SEEK_SET);
}