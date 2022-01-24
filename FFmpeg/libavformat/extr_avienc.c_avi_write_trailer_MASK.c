#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_24__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
struct TYPE_23__ {int nb_streams; TYPE_1__** streams; TYPE_3__* pb; TYPE_4__* priv_data; } ;
struct TYPE_22__ {int riff_id; int master_index_max_size; scalar_t__ odml_list; int /*<<< orphan*/  riff_start; int /*<<< orphan*/  movi_list; } ;
struct TYPE_21__ {int seekable; } ;
struct TYPE_20__ {int packet_count; int max_size; scalar_t__ frames_hdr_strm; int /*<<< orphan*/  last_dts; } ;
struct TYPE_19__ {TYPE_2__* priv_data; TYPE_6__* codecpar; } ;
typedef  TYPE_2__ AVIStream ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVIContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int AVI_MASTER_INDEX_ENTRY_SIZE ; 
 int AVI_MASTER_INDEX_PREFIX_SIZE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_MP2 ; 
 scalar_t__ AV_CODEC_ID_MP3 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    AVIContext *avi = s->priv_data;
    AVIOContext *pb = s->pb;
    int res = 0;
    int i, n, nb_frames;
    int64_t file_size;

    for (i = 0; i < s->nb_streams; i++) {
        AVIStream *avist = s->streams[i]->priv_data;
        FUNC10(s, i, avist->last_dts);
    }

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        if (avi->riff_id == 1) {
            FUNC8(pb, avi->movi_list);
            res = FUNC2(s);
            FUNC8(pb, avi->riff_start);
        } else {
            FUNC3(s);
            FUNC8(pb, avi->movi_list);
            FUNC8(pb, avi->riff_start);

            file_size = FUNC6(pb);
            FUNC4(pb, avi->odml_list - 8, SEEK_SET);
            FUNC9(pb, "LIST"); /* Making this AVI OpenDML one */
            FUNC5(pb, 16);

            for (n = nb_frames = 0; n < s->nb_streams; n++) {
                AVCodecParameters *par = s->streams[n]->codecpar;
                AVIStream *avist       = s->streams[n]->priv_data;

                if (par->codec_type == AVMEDIA_TYPE_VIDEO) {
                    if (nb_frames < avist->packet_count)
                        nb_frames = avist->packet_count;
                } else {
                    if (par->codec_id == AV_CODEC_ID_MP2 ||
                        par->codec_id == AV_CODEC_ID_MP3)
                        nb_frames += avist->packet_count;
                }
            }
            FUNC7(pb, nb_frames);
            FUNC4(pb, file_size, SEEK_SET);

            FUNC1(s, avi->riff_id);
        }
    }

    if (avi->riff_id >= avi->master_index_max_size) {
        int index_space = AVI_MASTER_INDEX_PREFIX_SIZE +
                          AVI_MASTER_INDEX_ENTRY_SIZE * avi->riff_id;
        FUNC0(s, AV_LOG_WARNING, "Output file not strictly OpenDML compliant, "
               "consider re-muxing with 'reserve_index_space' option value >= %d\n",
               index_space);
    }

    for (i = 0; i < s->nb_streams; i++) {
        AVIStream *avist = s->streams[i]->priv_data;
        if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
            FUNC4(pb, avist->frames_hdr_strm + 4, SEEK_SET);
            FUNC7(pb, avist->max_size);
        }
    }

    return res;
}