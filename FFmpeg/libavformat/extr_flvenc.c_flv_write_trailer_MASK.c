#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  double int64_t ;
struct TYPE_16__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
struct TYPE_15__ {int nb_streams; TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int flags; double videosize_offset; double videosize; double audiosize_offset; double audiosize; double lasttimestamp_offset; double lasttimestamp; double lastkeyframetimestamp_offset; double lastkeyframetimestamp; double lastkeyframelocation_offset; double lastkeyframelocation; double keyframe_index_size; double keyframes_info_offset; double datasize; double datastart_offset; double datasize_offset; double duration_offset; double duration; double filesize_offset; TYPE_3__* head_filepositions; int /*<<< orphan*/  filepositions_count; } ;
struct TYPE_13__ {double keyframe_position; double keyframe_timestamp; struct TYPE_13__* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  last_ts; } ;
struct TYPE_11__ {TYPE_2__* priv_data; TYPE_6__* codecpar; } ;
typedef  TYPE_2__ FLVStreamContext ;
typedef  TYPE_3__ FLVFileposition ;
typedef  TYPE_4__ FLVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_END_OF_OBJECT ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 scalar_t__ AV_CODEC_ID_MPEG4 ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FLV_ADD_KEYFRAME_INDEX ; 
 int FLV_NO_DURATION_FILESIZE ; 
 int FLV_NO_METADATA ; 
 int FLV_NO_SEQUENCE_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,double,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    int64_t file_size;
    AVIOContext *pb = s->pb;
    FLVContext *flv = s->priv_data;
    int build_keyframes_idx = flv->flags & FLV_ADD_KEYFRAME_INDEX;
    int i, res;
    int64_t cur_pos = FUNC3(s->pb);

    if (build_keyframes_idx) {
        FLVFileposition *newflv_posinfo, *p;

        FUNC2(pb, flv->videosize_offset, SEEK_SET);
        FUNC5(pb, flv->videosize);

        FUNC2(pb, flv->audiosize_offset, SEEK_SET);
        FUNC5(pb, flv->audiosize);

        FUNC2(pb, flv->lasttimestamp_offset, SEEK_SET);
        FUNC5(pb, flv->lasttimestamp);

        FUNC2(pb, flv->lastkeyframetimestamp_offset, SEEK_SET);
        FUNC5(pb, flv->lastkeyframetimestamp);

        FUNC2(pb, flv->lastkeyframelocation_offset, SEEK_SET);
        FUNC5(pb, flv->lastkeyframelocation + flv->keyframe_index_size);
        FUNC2(pb, cur_pos, SEEK_SET);

        res = FUNC9(s);
        if (res < 0) {
             goto end;
        }
        FUNC2(pb, flv->keyframes_info_offset, SEEK_SET);
        FUNC7(pb, "filepositions");
        FUNC6(pb, flv->filepositions_count);
        for (newflv_posinfo = flv->head_filepositions; newflv_posinfo; newflv_posinfo = newflv_posinfo->next) {
            FUNC5(pb, newflv_posinfo->keyframe_position + flv->keyframe_index_size);
        }

        FUNC7(pb, "times");
        FUNC6(pb, flv->filepositions_count);
        for (newflv_posinfo = flv->head_filepositions; newflv_posinfo; newflv_posinfo = newflv_posinfo->next) {
            FUNC5(pb, newflv_posinfo->keyframe_timestamp);
        }

        newflv_posinfo = flv->head_filepositions;
        while (newflv_posinfo) {
            p = newflv_posinfo->next;
            if (p) {
                newflv_posinfo->next = p->next;
                FUNC0(p);
                p = NULL;
            } else {
                FUNC0(newflv_posinfo);
                newflv_posinfo = NULL;
            }
        }

        FUNC7(pb, "");
        FUNC4(pb, AMF_END_OF_OBJECT);

        FUNC2(pb, cur_pos + flv->keyframe_index_size, SEEK_SET);
    }

end:
    if (flv->flags & FLV_NO_SEQUENCE_END) {
        FUNC1(s, AV_LOG_DEBUG, "FLV no sequence end mode open\n");
    } else {
        /* Add EOS tag */
        for (i = 0; i < s->nb_streams; i++) {
            AVCodecParameters *par = s->streams[i]->codecpar;
            FLVStreamContext *sc = s->streams[i]->priv_data;
            if (par->codec_type == AVMEDIA_TYPE_VIDEO &&
                    (par->codec_id == AV_CODEC_ID_H264 || par->codec_id == AV_CODEC_ID_MPEG4))
                FUNC8(pb, sc->last_ts);
        }
    }

    file_size = FUNC3(pb);

    if (build_keyframes_idx) {
        flv->datasize = file_size - flv->datastart_offset;
        FUNC2(pb, flv->datasize_offset, SEEK_SET);
        FUNC5(pb, flv->datasize);
    }
    if (!(flv->flags & FLV_NO_METADATA)) {
        if (!(flv->flags & FLV_NO_DURATION_FILESIZE)) {
            /* update information */
            if (FUNC2(pb, flv->duration_offset, SEEK_SET) < 0) {
                FUNC1(s, AV_LOG_WARNING, "Failed to update header with correct duration.\n");
            } else {
                FUNC5(pb, flv->duration / (double)1000);
            }
            if (FUNC2(pb, flv->filesize_offset, SEEK_SET) < 0) {
                FUNC1(s, AV_LOG_WARNING, "Failed to update header with correct filesize.\n");
            } else {
                FUNC5(pb, file_size);
            }
        }
    }

    return 0;
}