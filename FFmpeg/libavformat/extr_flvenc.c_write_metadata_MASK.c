#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_15__ {char* key; char* value; } ;
struct TYPE_14__ {double duration; int /*<<< orphan*/  metadata; TYPE_3__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_13__ {int flags; void* metadata_size_pos; double framerate; double datasize; double videosize; double audiosize; unsigned int metadata_totalsize; void* metadata_totalsize_pos; void* keyframes_info_offset; scalar_t__ lastkeyframelocation; void* lastkeyframelocation_offset; scalar_t__ lastkeyframetimestamp; void* lastkeyframetimestamp_offset; scalar_t__ lasttimestamp; void* lasttimestamp_offset; void* audiosize_offset; void* videosize_offset; void* datasize_offset; TYPE_2__* audio_par; TYPE_1__* video_par; scalar_t__ keyframe_index_size; scalar_t__ acurframeindex; void* filesize_offset; scalar_t__ data_par; void* duration_offset; } ;
struct TYPE_12__ {double bit_rate; double sample_rate; scalar_t__ codec_id; int channels; double codec_tag; } ;
struct TYPE_11__ {double width; double height; double bit_rate; double codec_tag; } ;
typedef  TYPE_3__ FLVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_DATA_TYPE_MIXEDARRAY ; 
 int /*<<< orphan*/  AMF_DATA_TYPE_OBJECT ; 
 int /*<<< orphan*/  AMF_DATA_TYPE_STRING ; 
 int /*<<< orphan*/  AMF_END_OF_OBJECT ; 
 scalar_t__ AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 double AV_TIME_BASE ; 
 int FLV_ADD_KEYFRAME_INDEX ; 
 int FLV_NO_DURATION_FILESIZE ; 
 int /*<<< orphan*/  FLV_TAG_TYPE_META ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static void FUNC14(AVFormatContext *s, unsigned int ts)
{
    AVIOContext *pb = s->pb;
    FLVContext *flv = s->priv_data;
    int write_duration_filesize = !(flv->flags & FLV_NO_DURATION_FILESIZE);
    int metadata_count = 0;
    int64_t metadata_count_pos;
    AVDictionaryEntry *tag = NULL;

    /* write meta_tag */
    FUNC5(pb, FLV_TAG_TYPE_META);            // tag type META
    flv->metadata_size_pos = FUNC4(pb);
    FUNC6(pb, 0);           // size of data part (sum of all parts below)
    FUNC6(pb, ts);          // timestamp
    FUNC7(pb, 0);           // reserved

    /* now data of data_size size */

    /* first event name as a string */
    FUNC5(pb, AMF_DATA_TYPE_STRING);
    FUNC12(pb, "onMetaData"); // 12 bytes

    /* mixed array (hash) with size and string/type/data tuples */
    FUNC5(pb, AMF_DATA_TYPE_MIXEDARRAY);
    metadata_count_pos = FUNC4(pb);
    metadata_count = 4 * !!flv->video_par +
                     5 * !!flv->audio_par +
                     1 * !!flv->data_par;
    if (write_duration_filesize) {
        metadata_count += 2; // +2 for duration and file size
    }
    FUNC7(pb, metadata_count);

    if (write_duration_filesize) {
        FUNC12(pb, "duration");
        flv->duration_offset = FUNC4(pb);
        // fill in the guessed duration, it'll be corrected later if incorrect
        FUNC11(pb, s->duration / AV_TIME_BASE);
    }

    if (flv->video_par) {
        FUNC12(pb, "width");
        FUNC11(pb, flv->video_par->width);

        FUNC12(pb, "height");
        FUNC11(pb, flv->video_par->height);

        FUNC12(pb, "videodatarate");
        FUNC11(pb, flv->video_par->bit_rate / 1024.0);

        if (flv->framerate != 0.0) {
            FUNC12(pb, "framerate");
            FUNC11(pb, flv->framerate);
            metadata_count++;
        }

        FUNC12(pb, "videocodecid");
        FUNC11(pb, flv->video_par->codec_tag);
    }

    if (flv->audio_par) {
        FUNC12(pb, "audiodatarate");
        FUNC11(pb, flv->audio_par->bit_rate / 1024.0);

        FUNC12(pb, "audiosamplerate");
        FUNC11(pb, flv->audio_par->sample_rate);

        FUNC12(pb, "audiosamplesize");
        FUNC11(pb, flv->audio_par->codec_id == AV_CODEC_ID_PCM_U8 ? 8 : 16);

        FUNC12(pb, "stereo");
        FUNC9(pb, flv->audio_par->channels == 2);

        FUNC12(pb, "audiocodecid");
        FUNC11(pb, flv->audio_par->codec_tag);
    }

    if (flv->data_par) {
        FUNC12(pb, "datastream");
        FUNC11(pb, 0.0);
    }

    FUNC8(s);
    while ((tag = FUNC0(s->metadata, "", tag, AV_DICT_IGNORE_SUFFIX))) {
        if(   !FUNC13(tag->key, "width")
            ||!FUNC13(tag->key, "height")
            ||!FUNC13(tag->key, "videodatarate")
            ||!FUNC13(tag->key, "framerate")
            ||!FUNC13(tag->key, "videocodecid")
            ||!FUNC13(tag->key, "audiodatarate")
            ||!FUNC13(tag->key, "audiosamplerate")
            ||!FUNC13(tag->key, "audiosamplesize")
            ||!FUNC13(tag->key, "stereo")
            ||!FUNC13(tag->key, "audiocodecid")
            ||!FUNC13(tag->key, "duration")
            ||!FUNC13(tag->key, "onMetaData")
            ||!FUNC13(tag->key, "datasize")
            ||!FUNC13(tag->key, "lasttimestamp")
            ||!FUNC13(tag->key, "totalframes")
            ||!FUNC13(tag->key, "hasAudio")
            ||!FUNC13(tag->key, "hasVideo")
            ||!FUNC13(tag->key, "hasCuePoints")
            ||!FUNC13(tag->key, "hasMetadata")
            ||!FUNC13(tag->key, "hasKeyframes")
        ){
            FUNC1(s, AV_LOG_DEBUG, "Ignoring metadata for %s\n", tag->key);
            continue;
        }
        FUNC12(pb, tag->key);
        FUNC5(pb, AMF_DATA_TYPE_STRING);
        FUNC12(pb, tag->value);
        metadata_count++;
    }

    if (write_duration_filesize) {
        FUNC12(pb, "filesize");
        flv->filesize_offset = FUNC4(pb);
        FUNC11(pb, 0); // delayed write
    }

    if (flv->flags & FLV_ADD_KEYFRAME_INDEX) {
        flv->acurframeindex = 0;
        flv->keyframe_index_size = 0;

        FUNC12(pb, "hasVideo");
        FUNC9(pb, !!flv->video_par);
        metadata_count++;

        FUNC12(pb, "hasKeyframes");
        FUNC9(pb, 1);
        metadata_count++;

        FUNC12(pb, "hasAudio");
        FUNC9(pb, !!flv->audio_par);
        metadata_count++;

        FUNC12(pb, "hasMetadata");
        FUNC9(pb, 1);
        metadata_count++;

        FUNC12(pb, "canSeekToEnd");
        FUNC9(pb, 1);
        metadata_count++;

        FUNC12(pb, "datasize");
        flv->datasize_offset = FUNC4(pb);
        flv->datasize = 0;
        FUNC11(pb, flv->datasize);
        metadata_count++;

        FUNC12(pb, "videosize");
        flv->videosize_offset = FUNC4(pb);
        flv->videosize = 0;
        FUNC11(pb, flv->videosize);
        metadata_count++;

        FUNC12(pb, "audiosize");
        flv->audiosize_offset = FUNC4(pb);
        flv->audiosize = 0;
        FUNC11(pb, flv->audiosize);
        metadata_count++;

        FUNC12(pb, "lasttimestamp");
        flv->lasttimestamp_offset = FUNC4(pb);
        flv->lasttimestamp = 0;
        FUNC11(pb, 0);
        metadata_count++;

        FUNC12(pb, "lastkeyframetimestamp");
        flv->lastkeyframetimestamp_offset = FUNC4(pb);
        flv->lastkeyframetimestamp = 0;
        FUNC11(pb, 0);
        metadata_count++;

        FUNC12(pb, "lastkeyframelocation");
        flv->lastkeyframelocation_offset = FUNC4(pb);
        flv->lastkeyframelocation = 0;
        FUNC11(pb, 0);
        metadata_count++;

        FUNC12(pb, "keyframes");
        FUNC10(pb, AMF_DATA_TYPE_OBJECT);
        metadata_count++;

        flv->keyframes_info_offset = FUNC4(pb);
    }

    FUNC12(pb, "");
    FUNC5(pb, AMF_END_OF_OBJECT);

    /* write total size of tag */
    flv->metadata_totalsize = FUNC4(pb) - flv->metadata_size_pos - 10;

    FUNC2(pb, metadata_count_pos, SEEK_SET);
    FUNC7(pb, metadata_count);

    FUNC2(pb, flv->metadata_size_pos, SEEK_SET);
    FUNC6(pb, flv->metadata_totalsize);
    FUNC3(pb, flv->metadata_totalsize + 10 - 3);
    flv->metadata_totalsize_pos = FUNC4(pb);
    FUNC7(pb, flv->metadata_totalsize + 11);
}